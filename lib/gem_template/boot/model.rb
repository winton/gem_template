Application.class_eval do

  ActiveSupport::Dependencies.autoload_paths << "#{root}/lib/gem_template/model"
end