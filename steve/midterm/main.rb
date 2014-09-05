#Six degrees of Kevin Bacon
#
#Given an actor's name, see whether they can be linked to Kevin Bacon in < 6 steps
$:.unshift (File.dirname(__FILE__))
require 'imdb'
require 'actor'
require 'film'
require 'byebug'

imdb = Imdb.new

kevin_bacon = Actor.new('Kevin Bacon')
imdb.find_actor(kevin_bacon)
