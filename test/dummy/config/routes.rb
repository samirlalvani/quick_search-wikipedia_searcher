Rails.application.routes.draw do

  mount QuickSearchWikipediaSearcher::Engine => "/quicksearch_wikipedia_searcher"
end
