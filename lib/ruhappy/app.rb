require 'sinatra' 
require 'json' 

require_relative 'stories'

module Ruhappy
  class App < Sinatra::Base 
    
    get '/omg' do
      'hello' 
    end 

    get '/stories' do
      content_type :json 

      @stories = Story.completed_stories
      @stories.to_json 
    end 

  end 
end 
