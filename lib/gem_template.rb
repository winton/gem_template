require File.dirname(__FILE__) + '/gem_template/gems'

GemTemplate::Gems.activate %w()

$:.unshift File.dirname(__FILE__)

module GemTemplate
end

require "adapters/rails#{Rails.version[0..0]}" if defined?(Rails)
require "adapters/sinatra" if defined?(Sinatra)