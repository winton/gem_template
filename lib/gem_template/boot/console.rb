require File.expand_path('../../gems', __FILE__)

GemTemplate::Gems.require(:console)

require File.dirname(__FILE__) + '/application'
require File.dirname(__FILE__) + '/sinatra'
require File.dirname(__FILE__) + '/active_wrapper'
require File.dirname(__FILE__) + '/model'