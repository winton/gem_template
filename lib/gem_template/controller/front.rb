Application.class_eval do
  
  get '/' do
    restrict
    "#{self.class.environment}"
  end
end