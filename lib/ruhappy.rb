require "ruhappy/version"
require 'ruhappy/configuration'
require 'ruhappy/app' 
require 'ruhappy/stories' 
require 'ruhappy/helpers'

module Ruhappy
  extend self

  def configuration 
    @configuration ||= Configuration.new 
  end 

  def configure
    yield(configuration) 
  end 
  
end
