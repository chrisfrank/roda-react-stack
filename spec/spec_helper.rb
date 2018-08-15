ENV['APP_ENV'] = 'test'
require_relative '../lib/environment'
Bundler.require :test

require_relative 'support/db_support'

RSpec.configure do |config|
  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.include Rack::Test::Methods
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def app
    described_class
  end
end
