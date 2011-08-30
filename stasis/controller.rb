require File.expand_path('../../lib/gem_template/gems', __FILE__)
GemTemplate::Gems.activate %w(active_wrapper)

$:.unshift File.expand_path('../../lib', __FILE__)
require 'gem_template/gems'

ignore /_.*/
layout 'layout.html.haml'