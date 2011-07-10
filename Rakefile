require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

require 'ruhappy'

task :start do 
  require_relative 'config/initializer'
  Ruhappy::App.run!
end 
