

module Bounces(date)
    attr_accessor :days
    attr_accessor :start_date
    attr_accessor :end_date
    attr_accessor :limit
    attr_accessor :offset
    attr_accessor :type
    attr_accessor :email

    @module = 'bounces'
    @action = 'get'
    @date = '1' # this instructs sendgrid to retrieve the failure dates
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