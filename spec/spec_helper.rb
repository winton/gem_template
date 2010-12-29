$root = File.expand_path('../../', __FILE__)
require "#{$root}/lib/gem_template/gems"

GemTemplate::Gems.activate %w(rack-test rspec)

require 'rack/test'

require "#{$root}/lib/gem_template"
require 'pp'

Spec::Runner.configure do |config|
end