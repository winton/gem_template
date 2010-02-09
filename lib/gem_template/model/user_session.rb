class UserSession < Authlogic::Session::Base
  params_key 'token'
  single_access_allowed_request_types :any
end