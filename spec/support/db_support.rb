ENV['DATABASE_URL'] = ENV['DATABASE_URL_TEST'] || 'sqlite:/'
require 'lib/db'
require 'database_cleaner'

RSpec.configure do |config|
  config.before(:suite) do
    # automatically run migrations
    Sequel.extension :migration
    Sequel::Migrator.run(DB, 'lib/migrations')
    Sequel.single_threaded = true

    # run each test in a clean database
    DatabaseCleaner.allow_remote_database_url = true
    DatabaseCleaner.strategy = :transaction
  end

  Strategy = lambda do |spec_type|
    spec_type == :feature ? :truncation : :transaction
  end

  config.around(:each) do |example|
    DatabaseCleaner.strategy = Strategy.call(example.metadata[:type])
    DatabaseCleaner.cleaning { example.run }
  end
end
