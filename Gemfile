source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'active_storage_validations', '~> 0.1'
gem 'sprockets', '~> 3.7.2'
gem 'ffi', '~> 1.9.24'
gem "haml-rails", "~> 1.0"
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'webpacker', '~> 3.5'
gem 'tailwindcss', '~> 0.2.0'
gem 'devise'
gem 'omniauth-linkedin-oauth2'
gem 'crafted_oauth', github: 'craftacademy/crafted_oauth', branch: 'refactorings'
gem 'font-awesome-sass', '~> 5.4.1'
gem "aws-sdk-s3", require: false
gem 'stripe-rails'
gem 'high_voltage', '~> 3.1'
gem 'cookies_eu'

group :development, :test do
  gem 'coveralls', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'cucumber-rails', '~> 1.6', require: false
  gem 'database_cleaner'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
  gem 'faker'
  gem 'stripe-ruby-mock', '~> 2.5.4', require: 'stripe_mock'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
