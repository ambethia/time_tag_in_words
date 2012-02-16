$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "time_tag_in_words/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "time_tag_in_words"
  s.version     = TimeTagInWords::VERSION
  s.authors     = ["Jason L Perry"]
  s.email       = ["jasper@ambethia.com"]
  s.homepage    = "https://github.com/TampaRuby/time_tag_in_words"
  s.summary     = "Like `time_tag` but 'in words'."
  s.summary     = "Example rails plugin for a talk on publishing ruby gems"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3"

  s.add_development_dependency "sqlite3"
end
