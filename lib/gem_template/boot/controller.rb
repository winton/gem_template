Application.class_eval do

  Dir["#{root}/lib/gem_template/controller/*.rb"].sort.each do |path|
    require path
  end
end