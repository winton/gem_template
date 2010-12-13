require File.dirname(__FILE__) + '/gem_template/gems'

GemTemplate::Gems.require(:lib)

$:.unshift File.dirname(__FILE__)

require 'gem_template/version'

require 'boot/application'
require 'boot/sinatra'
require 'boot/session'
require 'boot/active_wrapper'
require 'boot/flash'
require 'boot/haml'
require 'boot/lilypad'
require 'boot/controller'
require 'boot/helper'
require 'boot/model'
