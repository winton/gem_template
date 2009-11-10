require 'rubygems'

gems = [
  [ 'haml', '=2.2.13' ],
  [ 'sinatra', '=0.9.4' ],
  [ 'active_wrapper', '=0.2.0' ]
]

gems.each do |name, version|
  begin
    gem name, version
  rescue Exception
    $:.unshift "#{File.dirname(__FILE__)}/../vendor/#{name}/lib"
  end
end

require 'haml'
require 'sinatra/base'
require 'active_wrapper'

class Application < Sinatra::Base
end

Dir["#{File.dirname(__FILE__)}/gem_template/**/*.rb"].each do |path|
  require path
end