require 'bundler/setup'
require 'dotenv/load'
APP_ENV = (ENV['APP_ENV'] || 'development').to_sym
APP_ROOT = File.expand_path('..', __dir__)
$LOAD_PATH.unshift APP_ROOT
