$root = File.expand_path('../../', __FILE__)
require "#{$root}/lib/gem_template/gems"

GemTemplate::Gems.activate :framework_fixture
require 'framework_fixture'

FrameworkFixture.generate File.dirname(__FILE__) + '/fixtures'

GemTemplate::Gems.activate :rspec

require 'rack/test'

require "#{$root}/lib/gem_template"
require 'pp'

Spec::Runner.configure do |config|
end

def capture_stdout
  old = $stdout
  out = StringIO.new
  $stdout = out
  yield
  return out.string
ensure
  $stdout = old
end