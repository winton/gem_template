Application.class_eval do

  log = File.new("#{root}/log/#{environment}.log", "a")
  STDOUT.reopen(log)
  STDERR.reopen(log)
end