require_relative '../db'

namespace :db do
  task :migrate, [:version] => :environment do |_task, args|
    version = args[:version]
    cmd =  'bin/sequel -m lib/migrations'
    cmd += " -M #{version}" if version
    cmd += " #{DB.url}"
    system cmd
    puts "Migrated #{DB.url} to #{version || 'latest'}"
  end
end
