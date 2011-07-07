require 'spec_helper' 
require 'pivotal_tracker' 

describe Ruhappy::Story do
  describe "#completed_stories" do
    it 'should retrieve every story marked as complete for this project' do
      PivotalTracker::Project.stub!(:find).and_return(project_mock)
      project_mock.stub!(:stories).and_return(mock('stories', :all => ['stories']))
      Ruhappy::Story.completed_stories.should == ['stories']
    end 
  end 

end 

private 
def project_mock(stubs={}) 
  @project_mock ||= mock(PivotalTracker::Project,stubs).as_null_object
end
