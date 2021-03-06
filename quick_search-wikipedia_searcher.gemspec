$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search_wikipedia_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-wikipedia_searcher"
  s.version     = QuickSearchWikipediaSearcher::VERSION
  s.authors     = ["Kevin Beswick"]
  s.email       = ["kdbeswic@ncsu.edu"]
  s.homepage    = "http://search.lib.ncsu.edu"
  s.summary     = "Provides a Wikipedia searcher module for QuickSearch"
  s.description = "Provides a Wikipedia searcher module for QuickSearch"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "quick_search-core"

end
