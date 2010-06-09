require File.expand_path("#{File.dirname(__FILE__)}/../require")
Require.lib!

class GemTemplate
  
  def initialize(environment, root)
    @db, @log, @mail = ActiveWrapper.setup(
      :base => root,
      :env => environment
    )
    @db.establish_connection
  end
end