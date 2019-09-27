source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'
  gem 'faker'

group :development, :test do
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  # gem 'rails-controller-testing'
  # gem 'rspec-core', git: 'https://github.com/rspec/rspec-core'
  # gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations'
  # gem 'rspec-mocks', git: 'https://github.com/rspec/rspec-mocks'
  gem 'rspec-rails', git: 'https://github.com/rspec/rspec-rails', branch: '4-0-dev'
  # gem 'rspec-support', git: 'https://github.com/rspec/rspec-support'
  gem 'selenium-webdriver'
  gem 'vcr'
  gem 'webdrivers'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: %i(mri mingw x64_mingw jruby)
