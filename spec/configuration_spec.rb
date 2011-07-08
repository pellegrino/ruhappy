require 'spec_helper' 

describe Ruhappy do

  before do
    Ruhappy.configure do |config| 
      config.pivotal_tracker_token   = '1234' 
      config.pivotal_tracker_project = '5678'
    end 
  end 

  subject { Ruhappy } 

  its("configuration.pivotal_tracker_token")   { should == '1234' } 
  its("configuration.pivotal_tracker_project") { should == '5678' } 
end 

