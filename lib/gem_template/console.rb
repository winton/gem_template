require 'rubygems'
require 'bundler'

Bundler.require

require File.dirname(__FILE__) + '/application'
require File.expand_path('../../application/sinatra', __FILE__)