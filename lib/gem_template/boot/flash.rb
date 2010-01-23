Application.class_eval do
  
  use Rack::Flash, :accessorize => %w(error notice success)
end