class Actor < Imdb
  attr_accessor :name
  attr_accessor :films
  
  def initialize(name)
    #Create a new actor object, then download the films they've been in
    @name = name
    @films = []
    retrieve_films
  end
  
  def retrieve_films
    #Download details of this actor's filmography, using the inherited IMDB method
    puts "Retrieving filmography for #{self.name}"
    self.find_films(self)
  end
  
  def analyse_films
  
  end
  
end