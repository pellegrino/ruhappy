require 'pivotal_tracker' 

module Ruhappy
  class Story
    def self.completed_stories
      PivotalTracker::Client.token =          Ruhappy.configuration.pivotal_tracker_token
      @project = PivotalTracker::Project.find Ruhappy.configuration.pivotal_tracker_project
      @project.stories.all 
    end 
  end 
end 
