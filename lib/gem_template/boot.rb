Application.class_eval do
  
  # Sinatra
  enable :raise_errors
  set :environment, $testing ? :test : environment
  set :root, File.expand_path("#{File.dirname(__FILE__)}/../../")
  set :public, "#{root}/public"
  set :logging, true
  set :static, true
  set :views, "#{root}/lib/gem_template/view"
    
  # Database, logging, and email
  $db, $log, $mail = ActiveWrapper.setup(
    :base => root,
    :env => environment,
    :stdout => environment != :test
  )
  $db.establish_connection
  ActionMailer::Base.raise_delivery_errors = true
  
  # Hoptoad notifier
  if File.exists?(hoptoad = "#{root}/config/hoptoad.txt")
    use Rack::Lilypad, File.read(hoptoad).strip
  end
  
  # Require controllers, helpers, and models
  %w(controller helper model).each do |dir|
    Dir["#{File.dirname(__FILE__)}/#{dir}/*.rb"].sort.each do |path|
      require path
    end
  end
end
