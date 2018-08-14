Dir['lib/tasks/*.rake'].each { |f| load f }
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :reek do
  system 'bin/reek'
end

task :rubocop do
  system 'bin/rubocop lib spec'
end

task :default  => %w[spec reek rubocop]

task :environment do
  require_relative 'lib/environment'
end
