require 'spec_helper' 

describe Ruhappy::Helpers do
  include Ruhappy::Helpers 

  it "should include ruhappy client-side code" do
    # TODO: Expand this test 
    ruhappy_javascripts.should == "<script type='text/javascript' src='assets/ruhappy.js'></script>"
  end 
end 
