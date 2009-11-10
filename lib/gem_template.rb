require 'rubygems'

gems = [
  [ 'haml', '=2.2.2' ],
  [ 'sinatra', '=0.9.4' ],
  [ 'winton-active_wrapper', '=0.1.9' ]
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