require File.dirname(__FILE__) + '/gem_template/gems'

GemTemplate::Gems.require(:lib)

$:.unshift File.dirname(__FILE__)

require 'gem_template/version'

module GemTemplate
end

require "adapters/rails#{Rails.version[0..0]}" if defined?(Rails)
require "adapters/sinatra" if defined?(Sinatra)