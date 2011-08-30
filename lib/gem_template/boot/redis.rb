require 'redis'

def redis
  $redis ||= (

    env = ENV['RACK_ENV'] || 'development'
    yaml = YAML.load(File.read('config/redis.yml'))[env]

    db = yaml.keys.first
    config = yaml[db]
    config['db'] = db

    $redis_url = "#{config['host']}:#{config['port']}/#{config['db']}"

    ::Redis.new(
      :host => config['host'],
      :port => config['port'],
      :db => config['db']
    )
  )
end

redis