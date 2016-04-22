Rails.application.routes.draw do

  mount QuickSearchWikipediaSearcher::Engine => "/quick_search_wikipedia_searcher"
end
