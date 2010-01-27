require 'rubygems'
require 'dep'

Dep.gem do
  
  active_wrapper '=0.2.3', :require => 'active_wrapper'
  cucumber '=0.6.2'
  dep '=0.1.1'
  haml '=2.2.17', :require => %w(haml sass)
  lilypad '=0.3.0', :require => %w(lilypad)
  self.send 'rack-flash'.intern, '=0.1.1', :require => %w(rack-flash)
  rake '=0.8.7', :require => %w(rake)
  rspec '=1.3.0'
  sinatra '=0.9.4', :require => %w(sinatra/base)
end

Dep.gemspec do

  author 'Winton Welsh'
  email 'mail@wintoni.us'
  name 'gem_template'
  homepage "http://github.com/winton/#{name}"
  root File.expand_path("#{File.dirname(__FILE__)}/../")
  summary ""
  version '0.1.0'
end

Dep.profile do
  
  bin :require => %w(lib/gem_template)
  
  console :require => %w(
    lib/gem_template/boot/application
    lib/gem_template/boot/sinatra
    lib/gem_template/boot/active_wrapper
    lib/gem_template/boot/model
  ) do
    active_wrapper
    sinatra
  end
  
  gemspec do
    active_wrapper
    dep
    haml
    lilypad
    self.send 'rack-flash'.intern
    sinatra
  end
  
  lib :require => %w(
    lib/gem_template/boot/application
    lib/gem_template/boot/sinatra
    lib/gem_template/boot/session
    lib/gem_template/boot/flash
    lib/gem_template/boot/active_wrapper
    lib/gem_template/boot/lilypad
    lib/gem_template/boot/controller
    lib/gem_template/boot/helper
    lib/gem_template/boot/model
  ) do
    haml
    sinatra
  end
  
  rakefile :require => %w(dep/tasks) do
    active_wrapper :require => %w(active_wrapper/tasks)
    cucumber :require => %w(cucumber/rake/task)
    rake :require => %w(rake/gempackagetask)
    rspec :require => %w(spec/rake/spectask)
  end
  
  spec_helper :require => %w(dep/spec_helper lib/gem_template pp)
end