$testing = true
$root = File.expand_path(File.dirname(__FILE__) + "/../../")
$:.unshift "#{$root}/lib"

require 'gem_template'

gems = [
  [ 'rack-test', '=0.5.1' ],
  [ 'rspec', '=1.2.9' ],
  [ 'webrat', '=0.5.3' ]
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
require 'webrat'

World do
  def app
    Application
  end
  
  include Rack::Test::Methods
  include Test::Unit::Assertions
  include Webrat::Matchers
  include Webrat::Methods
end