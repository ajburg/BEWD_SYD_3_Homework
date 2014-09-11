# An object which we can use to interrogate the IMDB database

require 'open-uri'
require 'json'
require 'rest-client'

class Imdb

  def initialize

  end
  
  def find_films(actor)
    # Query IMDB for an actor, and find their filmography (as an actor only)
    name = actor.name.downcase
    name = URI::encode(name)
    query = 'http://www.myapifilms.com/imdb?filmography=1&name=' + name
    data = get_data(query)
    json_data = JSON.parse(data)[0]
    
    # The IMDB API returns an array of filmographies. We only want those for Actor
    all_filmographies = json_data['filmographies']
    all_filmographies.each do |filmography|
      if filmography['section'] == 'Actor'
        all_films = filmography['filmography']
        #Extract just the film titles, and append each to the actor's filmography
        all_films.each do |film|
          actor.films << film['title']
        end      
      end
    end       
  end
  
  def get_data(url)
    data = RestClient.get(url)  
  end

end
