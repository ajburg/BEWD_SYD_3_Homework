#Retrieves information about actors and the movies they've been in.
#Might make this into a quiz?

$:.unshift (File.dirname(__FILE__))
require 'imdb'
require 'actor'
require 'film'
require 'quiz'

require 'byebug'

#Maintain a hash of films, and an array of actors. Once I know how,
#I'll put these in a database
films = {}
actors = []

#We're really only interested in films which contain multiple actors
#from the list above
common_films = []

#Create some actor objects
actors << Actor.new('Kevin Bacon')
actors << Actor.new('Steve Martin')
actors << Actor.new('Brad Pitt')
actors << Actor.new('Julia Roberts')
actors << Actor.new('John Candy')
actors << Actor.new('Anthony Hopkins')
actors << Actor.new('George Clooney')

#Now that we have all the actors' details, analyse their films to
#see which films had common actors
actors.each do |actor|

  actor.films.each do |film_title|
    film = Film.new(film_title, actor.name)
    key = film.short_title
    
    #If this film doesn't already exist in the array, add it
    if films[key] == nil
      films[key] = film
      
    #Otherwise add this actor to the existing film's cast. Append
    #this film to the common_films array
    else
      films[key].cast << actor.name
      common_films << film_title
    end
  end
  
end

#Report films with more than one actor from the actors array. These
#are stored by title in the common_films array
common_films.each do |film_title|
  short_title = film_title.gsub(" ","")
  film = films[short_title]
  puts "#{film.title} features #{film.cast}"
end

byebug

quiz = Quiz.new(common_films, actors)
puts quiz