require File.dirname(__FILE__) + '/gem_template/gems'

GemTemplate::Gems.activate %w(active_wrapper)

require 'active_wrapper'

$:.unshift File.dirname(__FILE__)

require 'gem_template/version'

class GemTemplate
  
  def initialize(environment, root)
    @db, @log, @mail = ActiveWrapper.setup(
      :base => root,
      :env => environment
    )
    @db.establish_connection
  end
end