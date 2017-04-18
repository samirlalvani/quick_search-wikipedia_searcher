# QuickSearch Wikipedia Searcher

## Description

This is a gem engine implementing a Wikipedia searcher for QuickSearch.

## Installation

Include the searcher gem  in your Gemfile:

    gem 'quick_search_wikipedia_searcher'

Include as a searcher in your config/quick_search_config.yml:

    searchers = [wikipedia, ..., some_searcher]
    
Run bundle install:

    bundle install
    
Include in your Search Results page

     <%= render_module @wikipedia, 'wikipedia' %>
     
For more general information about setting up searcher plugins in QuickSearch, see https://github.com/NCSU-Libraries/quick_search
