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

actors << Actor.new('Kevin Bacon')
actors << Actor.new('Brad Pitt')
actors << Actor.new('Julia Roberts')
actors.each do |actor|
  imdb.find_films(actor)
  puts
  puts actor.name.upcase + ':'
  puts actor.films
end

