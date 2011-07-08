require 'spec_helper'

describe Ruhappy::App do
  context "GET /stories should fetch every pivotal tracker story" do
    before do 
      Ruhappy::Story.stub_chain(:completed_stories, :to_json).and_return "json" 
      get '/stories'
    end 

    it "should return found stories converted to json" do
      last_response.body.should == 'json' 
    end   

    it "should return the response using a json content_type" do 
      last_response.content_type.should == 'application/json' 
    end 
  end 
end 
