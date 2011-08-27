require 'uri'
require 'redis'

def redis
  $redis ||= (

    env = ENV['RACK_ENV'] || 'development'
    yaml = YAML.load(File.read('config/redis.yml'))[env]
    db = yaml.keys.first
    config = yaml[db]
    config['db'] = db
    $redis_url = "#{config['host']}:#{config['port']}/#{config['db']}"
    url = URI("redis://#{$redis_url}")

    ::Redis.new(
      :host => url.host,
      :port => url.port,
      :db => url.path[1..-1],
      :password => url.password
    )
  )
end

redis