$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quicksearch_wikipedia_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quicksearch_wikipedia_searcher"
  s.version     = QuickSearchWikipediaSearcher::VERSION
  s.authors     = ["Kevin Beswick"]
  s.email       = ["kdbeswic@ncsu.edu"]
  s.homepage    = "http://search.lib.ncsu.edu"
  s.summary     = "Provides a Wikipedia searcher module for QuickSearch"
  s.description = "Provides a Wikipedia searcher module for QuickSearch"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]


end
