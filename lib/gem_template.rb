require 'rubygems'
require 'bundler'

Bundler.require(:lib)

$:.unshift File.dirname(__FILE__) + '/gem_template'

require 'version'
require 'boot/application'
require 'boot/sinatra'
require 'boot/session'
require 'boot/flash'
require 'boot/active_wrapper'
require 'boot/lilypad'
require 'boot/controller'
require 'boot/helper'
require 'boot/model'