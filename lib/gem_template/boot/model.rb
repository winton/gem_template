Application.class_eval do

  Dir["#{root}/lib/gem_template/model/*.rb"].sort.each do |path|
    require path
  end
end