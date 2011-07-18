# ruhappy

[http://pellegrino.github.com/ruhappy](http://pellegrino.github.com/ruhappy)

(WORK IN PROGRESS) R U HAPPY its a way to ask feedback from your users about stories marked as delivered in Pivotal Tracker 

## Integrating to your rails app
  1. Add ruhappy to your gemfile
        gem 'ruhappy' 

  1. Create a config/initializers/ruhappy.rb with your pivotal tracker information 
  1. Mount ruhappy application in your config/routes.rb 
        mount Ruhappy::App, :at => "/ruhappy" 


## Demo

For simple a Rails 3 scaffold project using ruhappy check [http://ruhappy.heroku.com](http://ruhappy.heroku.com)

## Contributing 
Features are tracked in [Pivotal Tracker](https://www.pivotaltracker.com/projects/326091) 

### How to run
  1. Create a .rvmrc file. There is an .rvmrc.example provided 
  1. Run `bundle install` to install all of the dependencies 
  1. Create a config/initializer.rb with your pivotal tracker information 
  1. Run `rake start` to the application with config provided 
## Future plans

  * Integration with Github and others adapters

