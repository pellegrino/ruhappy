require 'spec_helper'

describe Ruhappy::App do
  context "GET /stories should fetch every pivotal tracker story" do
    before do 
      Ruhappy::Story.stub!(:completed_stories).and_return([story_mock(name: "Foo", description: "Bar")]) 
      visit '/stories'
    end 

    it "should display found stories" do
      page.should have_css("h3.header", "Are u Happy?")

      within(".stories") do 
        page.should have_css(".name",         "Foo")
        page.should have_css(".description",  "Bar")
      end 
    end   

  end 
end 


private 
def story_mock(stubs={})
  @story_mock ||= mock(PivotalTracker::Story, stubs).as_null_object
end 
