require "pp"
require "bundler"

Bundler.require(:default)
Bundler.require(:development)

$root = File.expand_path('../../', __FILE__)

require "#{$root}/lib/gem_template"