Application.class_eval do

  Dir["#{root}/lib/gem_template/helper/*.rb"].sort.each do |path|
    require path
  end
end