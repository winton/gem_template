require 'rubygems'

gems = [
  [ 'active_wrapper', '=0.2.3' ]
]

gems.each do |name, version|
  if File.exists?(path = "#{File.dirname(__FILE__)}/../vendor/#{name}/lib")
    $:.unshift path
  else
    gem name, version
  end
end

require 'active_wrapper'

$root = File.expand_path("#{File.dirname(__FILE__)}/../")

$db, $log, $mail = ActiveWrapper.setup(
  :base => $root,
  :env => ENV['RACK_ENV'],
  :stdout => false
)
$db.establish_connection

Dir["#{$root}/lib/gem_template/model/*.rb"].each do |path|
  require path
end