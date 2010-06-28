source "http://rubygems.org"

v = {
  :active_wrapper => '=0.2.7',
  :bundler => '=0.9.26',
  :rake => '=0.8.7',
  :rspec => '=1.3.0'
}

group :gemspec do
  gem 'active_wrapper', v[:active_wrapper]
  gem 'bundler', v[:bundler]
end

group :gemspec_dev do
  gem 'rspec', v[:rspec]
end

group :lib do
  gem 'active_wrapper', v[:active_wrapper], :require => %w(active_wrapper)
end

group :rake do
  gem 'rake', v[:rake], :require => %w(rake rake/gempackagetask)
  gem 'rspec', v[:rspec], :require => %w(spec/rake/spectask)
end

group :spec do
end