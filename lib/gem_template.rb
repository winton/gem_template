require 'rubygems'
require 'bundler'

Bundler.require(:lib)

$:.unshift File.dirname(__FILE__) + '/gem_template'

require 'version'

class GemTemplate
  
  def initialize(environment, root)
    @db, @log, @mail = ActiveWrapper.setup(
      :base => root,
      :env => environment
    )
    @db.establish_connection
  end
end