require 'rubygems'

gem 'active_wrapper', '= 0.4.5'
require 'active_wrapper'

$:.unshift File.dirname(__FILE__)

class GemTemplate
  
  def initialize(environment, root)
    @db, @log = ActiveWrapper.setup(
      :base => root,
      :env => environment
    )
    @db.establish_connection
  end
end