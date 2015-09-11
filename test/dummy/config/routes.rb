Rails.application.routes.draw do

  mount QuicksearchWikipediaSearcher::Engine => "/quicksearch_wikipedia_searcher"
end
