require 'active_wrapper'

Application.class_eval do
  
  $db, $log, $mail = ActiveWrapper.setup(
    :base => root,
    :env => environment,
    :stdout => $0 != 'irb' && environment != :test
  )
  
  $db.establish_connection

  ActionMailer::Base.raise_delivery_errors = true
end