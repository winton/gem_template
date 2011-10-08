require "pp"
require "bundler"

Bundler.require(:development)

$root = File.expand_path('../../', __FILE__)

FrameworkFixture.generate File.dirname(__FILE__) + '/fixtures'

require "#{$root}/lib/gem_template"
