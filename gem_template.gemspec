# -*- encoding: utf-8 -*-
root = File.expand_path('../', __FILE__)
lib = "#{root}/lib"

$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "gem_template"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://"
  s.summary     = %q{}
  s.description = %q{}

  s.executables = `cd #{root} && git ls-files bin/*`.split("\n").collect { |f| File.basename(f) }
  s.files = `cd #{root} && git ls-files`.split("\n")
  s.require_paths = %w(lib)
  s.test_files = `cd #{root} && git ls-files -- {features,test,spec}/*`.split("\n")

  s.add_development_dependency "rack-test", "= 0.6.1"
  s.add_development_dependency "rspec", "~> 1.0"

  s.add_dependency "bundler"
  s.add_dependency "active_wrapper",  "= 0.4.5"
  s.add_dependency "haml",            "= 3.1.2"
  s.add_dependency "lilypad",         "= 0.3.1"
  s.add_dependency "redis",           "= 2.2.2"
  s.add_dependency "sinatra",         "= 1.2.6"
end