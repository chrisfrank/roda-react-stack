require_relative 'environment'
require 'sequel'

Sequel.default_timezone = :utc
Sequel.datetime_class = DateTime
DB = Sequel.connect ENV.fetch('DATABASE_URL', 'sqlite://dev.sqlite')
DB.freeze if APP_ENV == :production
