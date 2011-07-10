require 'rubygems'
require 'bundler' 

Bundler.require 

require 'ruhappy' 
require './config/initializer'

run Ruhappy::App

