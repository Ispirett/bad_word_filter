require "bad_word_filter/version"
require 'rest-client'
require 'json'
module BadWordFilter
  class Error < StandardError; end
  # Your code goes here...
  def self.filter(content,censor_character='*')
    api = ApiCaller.new('https://neutrinoapi-bad-word-filter.p.rapidapi.com/bad-word-filter')
    response = api.call(content,censor_character)
    return 'NotFound' if response.code == 404 || response.code == 401
    JSON.parse(response.body)
  end

  class ApiCaller
    def initialize(url)
      @url = url
    end
    def call(content,censor_character='*')
      RestClient.post(@url, {'content':content.to_s, 'censor-character': censor_character},
                      'X-RapidAPI-Host': 'neutrinoapi-bad-word-filter.p.rapidapi.com',
                      'X-RapidAPI-Key': '93b5b963b7msh8c32d7f238b220ep17fe54jsn544b3021e726',
                      'Content-Type': 'application/x-www-form-urlencoded'

      )
    end

  end
end
