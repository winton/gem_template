require "rubygems"
require "bundler"

Bundler.require(:default)

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