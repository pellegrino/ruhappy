require 'sinatra' 
require 'json' 

require_relative 'stories'

module Ruhappy
  class App < Sinatra::Base 

    set :views,   File.dirname(__FILE__) + '/views'
    set :public,  File.dirname(__FILE__) + '/public'

    get '/stories' do
      @stories = Story.completed_stories
      haml :index 
    end 

  end 
end 
