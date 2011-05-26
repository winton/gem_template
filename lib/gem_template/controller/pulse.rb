Application.class_eval do
  
  get '/pulse' do
    "#{self.class.environment} OK"
  end
end