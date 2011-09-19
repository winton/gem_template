Application.class_eval do

  ActiveSupport::Dependencies.autoload_paths << "#{root}/lib/#{app_name}/model"
end