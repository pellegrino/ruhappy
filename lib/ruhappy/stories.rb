require 'pivotal_tracker' 

module Ruhappy
  class Story
    def self.completed_stories
      # TODO: remove hardcoded project and token information  
      PivotalTracker::Client.token = 'yourtoken'
      @project = PivotalTracker::Project.find(326091)
      @project.stories.all 
    end 
  end 
end 
