$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "closet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "closet"
  s.version     = Closet::VERSION
  s.authors     = ["Tom Simnett"]
  s.email       = ["tom@initforthe.com"]
  s.homepage    = "http://github.com/initforthe/closet"
  s.summary     = "A set of skeleton UI features for building apps at Initforthe"
  s.description = "A set of skeleton UI features for building apps at Initforthe"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency 'bootstrap', '~> 4.0.0.beta2.1'
  s.add_dependency 'coffee-rails', '~> 4.2'
end
