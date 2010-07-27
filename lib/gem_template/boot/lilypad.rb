require 'lilypad'

Application.class_eval do
  
  if File.exists?(lilypad = "#{root}/config/lilypad.txt")
    use Rack::Lilypad do
      api_key File.read(lilypad).strip
      sinatra
    end
  end
end