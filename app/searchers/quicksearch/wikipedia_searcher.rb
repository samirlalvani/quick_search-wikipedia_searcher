module Quicksearch
  class WikipediaSearcher < Quicksearch::Searcher

    def search
      resp = @http.get(base_url, parameters)
      @response = JSON.parse(resp.body)
    end

    def results
      if results_list
        results_list

      else
        @results_list = []

        @response['query']['search'].each do |value|
          result = OpenStruct.new
          result.title = value['title']
          result.link = build_link(value)
          result.description = value['snippet']
          @results_list << result
        end

        @results_list
      end

    end

    def base_url
      "https://en.wikipedia.org/w/api.php"
    end

    def parameters
      {
        'action' => 'query',
        'list' => 'search',
        'srsearch' => http_request_queries['not_escaped'],
        'sroffset' => @offset,
        'srlimit' => @per_page,
        'utf8' => true,
        'format' => 'json'
      }
    end

    def total
      @response['query']['searchinfo']['totalhits']
    end

    def spelling_suggestion
      @response['query']['searchinfo']['suggestion']
    end

    def loaded_link
      "https://en.wikipedia.org/wiki/Special:Search?fulltext=Search&search=" + http_request_queries['uri_escaped']
    end

    def build_link(value)
      "https://en.wikipedia.org/wiki/" + value['title']
    end

  end
end
