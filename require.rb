require 'rubygems'
gem 'require'
require 'require'

Require File.dirname(__FILE__) do
  
  gem(:active_wrapper, '=0.2.3') { require 'active_wrapper' }
  gem :cucumber, '=0.6.2'
  gem(:haml, '=2.2.17') { require %w(haml sass) }
  gem(:lilypad, '=0.3.0') { require 'lilypad' }
  gem(:'rack-flash', '=0.1.1') { require 'rack-flash' }
  gem(:rake, '=0.8.7') { require 'rake' }
  gem :require, '=0.1.6'
  gem :rspec, '=1.3.0'
  gem(:sinatra, '=0.9.4') { require 'sinatra/base' }
  
  gemspec do
    author 'Winton Welsh'
    dependencies do
      gem :active_wrapper
      gem :haml
      gem :lilypad
      gem :'rack-flash'
      gem :require
      gem :sinatra
    end
    email 'mail@wintoni.us'
    name 'gem_template'
    homepage "http://github.com/winton/#{name}"
    summary ""
    version '0.1.0'
  end
  
  bin { require 'lib/gem_template' }
  
  console do
    gem :active_wrapper
    gem :sinatra
    load_path 'vendor/authlogic/lib'
    require 'authlogic'
    require 'lib/gem_template/boot/application'
    require 'lib/gem_template/boot/sinatra'
    require 'lib/gem_template/boot/active_wrapper'
    require 'lib/gem_template/boot/model'
  end
  
  lib do
    gem :haml
    gem :sinatra
    gem :active_wrapper
    gem :'rack-flash'
    load_path 'vendor/authlogic/lib'
    require 'authlogic'
    require 'lib/gem_template/boot/application'
    require 'lib/gem_template/boot/sinatra'
    require 'lib/gem_template/boot/session'
    require 'lib/gem_template/boot/flash'
    require 'lib/gem_template/boot/active_wrapper'
    require 'lib/gem_template/boot/lilypad'
    require 'lib/gem_template/boot/controller'
    require 'lib/gem_template/boot/helper'
    require 'lib/gem_template/boot/model'
  end
  
  rakefile do
    gem(:active_wrapper) { require 'active_wrapper/tasks' }
    gem(:rake) { require 'rake/gempackagetask' }
    gem(:rspec) { require 'spec/rake/spectask' }
    require 'require/tasks'
  end
  
  spec_helper do
    require 'require/spec_helper'
    require 'lib/gem_template'
    require 'pp'
  end
end