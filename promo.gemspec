$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "promo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "promo"
  s.version     = Promo::VERSION
  s.authors     = ["Fox Chao"]
  s.email       = ["fox@steamcomputing.com"]
  s.homepage    = "https://steamcomputing.com"
  s.summary     = "Summary of Promo."
  s.description = "Description of Promo."
  s.license     = "FOX"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "slim-rails"
  s.add_dependency "cells-rails"
  s.add_dependency "cells-slim"

  s.add_development_dependency "byebug"
end
