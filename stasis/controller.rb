require 'bundler'

Bundler.require(:stasis)

$:.unshift File.expand_path('../../lib', __FILE__)

ignore /_.*/
layout 'layout.html.haml'