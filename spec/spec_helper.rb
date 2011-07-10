require 'bundler/setup'
require 'capybara/rspec'

require_relative '../lib/ruhappy'

RSpec.configure do |config|
  config.include Capybara 
end 

set :environment, :test 

Capybara.app =  Ruhappy::App
