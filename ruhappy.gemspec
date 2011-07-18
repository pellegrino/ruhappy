# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruhappy/version"

Gem::Specification.new do |s|
  s.name        = "ruhappy"
  s.version     = Ruhappy::VERSION
  s.authors     = ["Vitor Pellgrino","Rodrigo Pinto"]
  s.email       = ["vitorp@gmail.com", "rodrigopqn@gmail.com"]
  s.homepage    = "http://pellegrino.github.com/ruhappy"
  s.summary     = %q{User feedback toolbar}
  s.description = %q{Adds a toolbar to your rack app that provides your key users the possibility of giving feedback about your delivered stories}

  s.rubyforge_project = "ruhappy"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'haml',            '3.1.2'
  s.add_dependency 'pivotal-tracker', '0.3.1'
  s.add_dependency 'sinatra',         '1.2.6'

  s.add_development_dependency 'shotgun' 
  s.add_development_dependency 'rspec',     '2.6.0'
  s.add_development_dependency 'capybara',  '~> 1.0.0'
  s.add_development_dependency 'jasmine',   '1.0.2.1'
end
