ruby '2.5.1'
source 'https://rubygems.org'
gem 'dotenv'
gem 'foreman'
gem 'puma'
gem 'rake'
gem 'roda'
gem 'sequel'
gem 'sqlite3'
group :development, :test do
  gem 'mina'
  gem 'overcommit'
  gem 'pry'
  gem 'reek', require: false
  gem 'rerun', require: false
  gem 'rspec'
  gem 'rubocop', require: false
  gem 'timecop'
end
group :test do
  gem 'benchmark-ips'
  gem 'capybara', require: 'capybara/rspec'
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'rack-test', require: 'rack/test'
  gem 'selenium-webdriver', require: 'selenium/webdriver'
  gem 'webmock', require: 'webmock/rspec'
end
