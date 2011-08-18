require File.dirname(__FILE__) + '/lib/gems'

Gems.activate %w()

$:.unshift File.dirname(__FILE__) + '/lib'

ignore /_.*/
layout 'layout.html.haml'