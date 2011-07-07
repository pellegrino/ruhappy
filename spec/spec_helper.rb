require 'bundler/setup'
require 'rack/test'

require_relative '../lib/ruhappy'

RSpec.configure do |config|
  config.include Rack::Test::Methods 
end 

set :environment, :test 

def app
  Ruhappy::App
end 
