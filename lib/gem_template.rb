require File.dirname(__FILE__) + '/gem_template/gems'

<<<<<<< HEAD
GemTemplate::Gems.activate %w(active_wrapper haml lilypad rack-flash sinatra)
=======
GemTemplate::Gems.activate %w(haml lilypad sinatra)
>>>>>>> sinatra

$:.unshift File.expand_path(
  File.dirname(__FILE__) + '/../vendor/authlogic/lib'
)

require 'authlogic'

$:.unshift File.dirname(__FILE__)

require 'gem_template/boot/application'
require 'gem_template/boot/sinatra'
require 'gem_template/boot/log'
require 'gem_template/boot/session'
<<<<<<< HEAD
require 'gem_template/boot/active_wrapper'
require 'gem_template/boot/flash'
=======
>>>>>>> sinatra
require 'gem_template/boot/haml'
require 'gem_template/boot/lilypad'
require 'gem_template/boot/redis'
require 'gem_template/boot/controller'
require 'gem_template/boot/helper'
require 'gem_template/boot/model'