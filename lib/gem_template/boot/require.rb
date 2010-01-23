require 'rubygems'

gems = [
  [ 'haml', '=2.2.17' ],
  [ 'sinatra', '=0.9.4' ],
  [ 'active_wrapper', '=0.2.3' ],
  [ 'lilypad', '=0.3.0' ],
  [ 'rack-flash', '=0.1.1' ]
]

gems.each do |name, version|
  if File.exists?(path = "#{File.dirname(__FILE__)}/../../../vendor/#{name}/lib")
    $:.unshift path
  else
    gem name, version
  end
end

require 'haml'
require 'sass'
require 'sinatra/base'
require 'active_wrapper'
require 'lilypad'
require 'rack-flash'