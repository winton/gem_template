$testing = true
$root = File.expand_path(File.dirname(__FILE__) + "/../../")
$:.unshift "#{$root}/lib"

require 'gem_template'

gems = [
  [ 'rack-test', '=0.4.0' ],
  [ 'rspec', '=1.2.7' ]
]

gems.each do |name, version|
  begin
    gem name, version
  rescue Exception
    $:.unshift "#{File.dirname(__FILE__)}/../../vendor/#{name}/lib"
  end
end

require 'rack/test'
require 'spec/mocks'
require 'test/unit'
require "#{$root}/vendor/webrat/lib/webrat"

World do
  def app
    Application
  end
  
  include Rack::Test::Methods
  include Test::Unit::Assertions
  include Webrat::Matchers
  include Webrat::Methods
end