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
  s.summary     = "Quick way to add BugHerd to your Rails project!"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
