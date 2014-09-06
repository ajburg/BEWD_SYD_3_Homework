#Six degrees of Kevin Bacon
#
#Given an actor's name, see whether they can be linked to Kevin Bacon in < 6 steps
$:.unshift (File.dirname(__FILE__))
require 'imdb'
require 'actor'
require 'film'
require 'byebug'

imdb = Imdb.new
films = []
actors = []

#Create some actor objects
actors << Actor.new('Kevin Bacon')
actors << Actor.new('Brad Pitt')
actors << Actor.new('Julia Roberts')

#Fetch their filmographies from IMDB. (If I knew how to program events
#I'd do this automatically when each actor was created)
actors.each do |actor|
  imdb.find_films(actor)
  actor.films.each do |film|
    films << film
  end
end

puts films