require 'uri'
require 'redis'

Application.class_eval do
  helpers do

    def redis
      define_redis
    end
  end
end

def define_redis
  $redis ||= (
    url = URI('redis://localhost:6379/0')

    ::Redis.new(
      :host => url.host,
      :port => url.port,
      :db => url.path[1..-1],
      :password => url.password
    )
  )
end

define_redis