#!/bin/ruby
require 'json'
require 'stringio'
require 'net/http'

# Complete the diagonalDifference function below.
def getMovieTitles titles
  url_base = URI('https://jsonmock.hackerrank.com/api/movies/search/?Title=spiderman&page=')
  page_num = 1
  limit = 100
  max_pages_reached = false
  while !max_pages_reached
    params = { :per_page => limit, :page => page_num }
    url_base.query = URI.encode_www_form(params)

    p url_base

    res = Net::HTTP.get_response(url_base)
    res_str = eval(res.body) if res.is_a?(Net::HTTPSuccess)
    res_str[:data].each { |v| titles << v[:Title] unless v[:Title].nil? }

    if params[:page] == res_str[:total_pages]
      max_pages_reached = true
    else
      page_num += 1
    end
  end
end
titles = []
fptr = File.open('test', 'w')

getMovieTitles titles
fptr.write titles.sort
fptr.write "\n"

fptr.close()
