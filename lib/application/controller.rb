Application.class_eval do

  Dir["#{root}/lib/#{app_name}/controller/*.rb"].sort.each do |path|
    require path
  end
end