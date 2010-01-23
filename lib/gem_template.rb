# Require gems and vendored libraries
boot = %w(require)

# Create Application class
boot += %w(application)

# Sinatra settings
boot += %w(sinatra)

# ActiveWrapper (database, logging, and email)
boot += %w(active_wrapper)

# Lilypad (Hoptoad notification)
boot += %w(lilypad)

# Controllers, helpers, and models
boot += %w(controller helper model)

boot.each do |file|
  require "#{File.dirname(__FILE__)}/gem_template/boot/#{file}"
end