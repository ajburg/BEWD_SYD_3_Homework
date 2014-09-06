#Six degrees of Kevin Bacon
#
#Given an actor's name, see whether they can be linked to Kevin Bacon in < 6 steps
$:.unshift (File.dirname(__FILE__))
require 'imdb'
require 'actor'
require 'film'
require 'byebug'

imdb = Imdb.new
films = {}
actors = []

#Create some actor objects
#actors << Actor.new('Kevin Bacon')
#actors << Actor.new('Steve Martin')
actors << Actor.new('Brad Pitt')
#actors << Actor.new('Julia Roberts')
#actors << Actor.new('John Candy')
actors << Actor.new('Anthony Hopkins')

#Fetch their filmographies from IMDB. (If I knew how to program events
#I'd do this automatically when each actor was created)
actors.each do |actor|
  imdb.find_films(actor)
  
  #Create a new Film object, then add it to the films array
  actor.films.each do |film_title|
    film = Film.new(film_title, actor.name)
    key = film.short_title
    
    #If this film doesn't already exist in the array, add it
    if films[key] == nil
      films[key] = film
      
    #Otherwise add this actor to the existing film's cast
    else
      films[key].cast << actor.name
    end
  end
  
end

#Report films with more than one actor from the actors array
byebug
films.each do |short_title, film|
  puts short_title
  if film.cast.length > 0
    puts "#{film.name} features #{cast}"
  end
end