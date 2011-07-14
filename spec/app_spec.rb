require 'spec_helper'

describe Ruhappy::App do
  context "GET /stories should fetch every pivotal tracker story" do
    before do 
      Ruhappy::Story.stub_chain(:completed_stories, :to_json).and_return "myawesomecompletestories" 
      visit '/stories'
    end 

    it "should return found stories converted to json" do
      page.should have_content "myawesomecompletestories"
    end   

  end 
end 
