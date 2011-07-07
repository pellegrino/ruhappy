require 'spec_helper'

describe Ruhappy::App do
  it 'should fetch every pivotal tracker story' do
    Ruhappy::Story.stub!(:completed_stories).and_return(mock_stories)
    mock_stories.stub!(:to_json).and_return("stories in json format") 
    stories = Ruhappy::Story.completed_stories

    get '/stories'

    last_response.should be_ok 
    last_response.body.should == "stories in json format" 
  end 
end 

private 
def mock_stories(stubs={})
  @mock_stories ||= mock(Ruhappy::Story, stubs).as_null_object 
end 
