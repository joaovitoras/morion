$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "morion/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "morion"
  s.version     = Morion::VERSION
  s.authors     = ["João Vitor Alves Silva"]
  s.email       = ["joao.valves@hotmail.com"]
  s.homepage    = "https://github.com/joaovitoras/morion"
  s.summary     = "Rails image list"
  s.description = "Morion is a Rails Engine that enables the display of all images in application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "jquery-rails", "~> 4.1", ">= 4.1.0"
  s.add_dependency "font-awesome-rails", "~> 4.0"

  s.add_development_dependency "sqlite3", "~> 0"
end
