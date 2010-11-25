unless defined?(GemTemplate::Gems)
  
  require 'rubygems'
  
  module GemTemplate
    class Gems
    
      VERSIONS = {
        :active_wrapper => '=0.3.4',
        :cucumber => '=0.6.2',
        :haml => '=2.2.17',
        :lilypad => '=0.3.0',
        :'rack-flash' => '=0.1.1',
        :'rack-test' => '=0.5.3',
        :rake => '=0.8.7',
        :rspec => '=1.3.1',
        :sinatra => '=1.0'
      }
    
      TYPES = {
        :console => [ :active_wrapper, :sinatra ],
        :gemspec => [ :active_wrapper, :haml, :lilypad, :'rack-flash', :sinatra ],
        :gemspec_dev => [ :cucumber, :rspec, :'rack-test' ],
        :lib => [ :active_wrapper, :haml, :lilypad, :'rack-flash', :sinatra ],
        :rake => [ :rake, :rspec ],
        :spec => [ :'rack-test', :rspec ]
      }
      
      class <<self
        
        def lockfile
          file = File.expand_path('../../../gems', __FILE__)
          unless File.exists?(file)
            File.open(file, 'w') do |f|
              Gem.loaded_specs.each do |key, value|
                f.puts "#{key} #{value.version.version}"
              end
            end
          end
        end
        
        def require(type=nil)
          (TYPES[type] || TYPES.values.flatten.compact).each do |name|
            gem name.to_s, VERSIONS[name]
          end
        end
      end
    end
  end
end