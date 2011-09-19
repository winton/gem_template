require "rubygems"
require "bundler"

Bundler.setup(:default)

$:.unshift File.dirname(__FILE__)

require 'gem_template/application'

require 'application/sinatra'
require 'application/log'
require 'application/session'
require 'application/active_wrapper'
require 'application/haml'
require 'application/lilypad'
require 'application/redis'
require 'application/controller'
require 'application/helper'
require 'application/model'