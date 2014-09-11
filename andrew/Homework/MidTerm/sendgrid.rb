require 'json'
require 'rest-client'

class Sendgrid
  attr_accessor :api_user
  attr_accessor :api_key
  attr_reader :uri

  def initialize(api_user, api_key)
    @api_user = api_user
    @api_key = api_key
    @base_uri = 'https://api.sendgrid.com/api/'
    @date = '1' # this instructs sendgrid to retrieve the failure dates

  end

  def bounces(date)
    @module = 'bounces'
    @action = 'get'
    @limit = '' #Limits the number of results returned to this number
    @offset = '' #Optional beginning point in the list to retrieve from
    @type = '' #limits the result to Hard or soft
    @email = '' #searches for a particular email address to search for
    @start_date = date  #Must be YYYY/MM/DD
    @end_date = date  #Must be YYYY/MM/DD
    @days = '3'

    build_request

    results=request
    return results
  end

  def build_request
    #Need to Build the base get request
    @uri = "#{@base_uri}#{@module}.#{@action}.json?api_user=#{@api_user}&api_key=#{@api_key}&date=#{@date}"
    if @start_date != nil
      @uri = @uri + "&start_date=#{@start_date}&end_date=#{@end_date}"
     else
      @uri = @uri + "&days=#{@days}"
    end
    p @uri
  end

  def request
    rest_data = RestClient.get(@uri)
    return JSON.parse(rest_data)
  end
end