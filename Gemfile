source "http://rubygems.org"

v = {
  :active_wrapper => '=0.2.7',
  :bundler => '=1.0.0.beta.2',
  :cucumber => '=0.6.2',
  :haml => '=2.2.17',
  :lilypad => '=0.3.0',
  :rack_flash => '=0.1.1',
  :rack_test => '=0.5.3',
  :rake => '=0.8.7',
  :rspec => '=1.3.0',
  :sinatra => '=1.0'
}

group :console do
  gem 'active_wrapper', v[:active_wrapper], :require => %w(active_wrapper)
  gem 'sinatra', v[:sinatra], :require => %w(sinatra/base)
end

group :gemspec do
  gem 'active_wrapper', v[:active_wrapper], :require => %w(active_wrapper)
  gem 'bundler', v[:bundler]
  gem 'haml', v[:haml]
  gem 'lilypad', v[:lilypad]
  gem 'rack-flash', v[:rack_flash]
  gem 'sinatra', v[:sinatra]
end

group :gemspec_dev do
  gem 'cucumber', v[:cucumber]
  gem 'rspec', v[:rspec]
  gem 'rack-test', v[:rack_test]
end

group :lib do
  gem 'active_wrapper', v[:active_wrapper], :require => %w(active_wrapper)
  gem 'haml', v[:haml], :require => %w(haml sass)
  gem 'lilypad', v[:lilypad], :require => %w(lilypad)
  gem 'rack-flash', v[:rack_flash], :require => %w(rack-flash)
  gem 'sinatra', v[:sinatra], :require => %w(sinatra/base)
end

group :rake do
  gem 'active_wrapper', v[:active_wrapper], :require => %w(active_wrapper/tasks)
  gem 'rake', v[:rake], :require => %w(rake rake/gempackagetask)
  gem 'rspec', v[:rspec], :require => %w(spec/rake/spectask)
end

group :spec do
  gem 'rack-test', v[:rack_test], :require => %w(rack/test)
  gem 'rspec', v[:rspec], :require => %w(
    spec/adapters/mock_frameworks/rspec
    spec/runner/formatter/progress_bar_formatter
    spec/runner/formatter/text_mate_formatter
  )
end