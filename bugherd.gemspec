$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bugherd/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bugherd"
  s.version     = BugHerd::VERSION
  s.authors     = ["Vincent Brendel"]
  s.email       = ["support@bugherd.com"]
  s.homepage    = "http://www.bugherd.com"
  s.summary     = "Embedded issue tracker for websites and web apps"
  s.description = "BugHerd lets you report and manage issues directly from any website it's embedded on."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0"

  s.add_development_dependency "sqlite3"
end
