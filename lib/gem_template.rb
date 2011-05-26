require File.dirname(__FILE__) + '/gem_template/gems'

GemTemplate::Gems.activate %w(haml lilypad rack-flash sinatra)

$:.unshift File.dirname(__FILE__)

require 'gem_template/boot/application'
require 'gem_template/boot/sinatra'
require 'gem_template/boot/log'
require 'gem_template/boot/session'
require 'gem_template/boot/flash'
require 'gem_template/boot/haml'
require 'gem_template/boot/lilypad'
require 'gem_template/boot/redis'
require 'gem_template/boot/controller'
require 'gem_template/boot/helper'
require 'gem_template/boot/model'