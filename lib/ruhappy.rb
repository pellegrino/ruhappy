require "ruhappy/version"
require 'ruhappy/configuration'
require 'ruhappy/app' 
require 'ruhappy/stories' 

module Ruhappy
  extend self

  def configuration 
    @configuration ||= Configuration.new 
  end 

  def configure
    yield(configuration) 
  end 
  
end
