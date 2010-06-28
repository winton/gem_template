require 'gem_template/version'

require 'rubygems'
require 'bundler'

Bundler.require(:lib)

class GemTemplate
  
  def initialize(environment, root)
    @db, @log, @mail = ActiveWrapper.setup(
      :base => root,
      :env => environment
    )
    @db.establish_connection
  end
end