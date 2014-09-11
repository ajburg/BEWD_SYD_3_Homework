# Retrieves information about actors and the movies they've been in.
# Lists any movies which feature multiple specified actors..... and
# that's it so far.

$:.unshift (File.dirname(__FILE__))
require 'imdb'
require 'actor'
require 'film'
require 'byebug'

# Maintain a hash of films, and an array of actors. Once I know how,
# I'll put these in a database, rather than downloading them every time
films = {}
actors = []

# We're really only interested in films which contain multiple actors
# from the list above. These are stored in common_films
common_films = []

# Create some actor objects
# TODO: accept user input to define a new actor
actors << Actor.new('Kevin Bacon')
actors << Actor.new('Steve Martin')
actors << Actor.new('Brad Pitt')
#actors << Actor.new('Julia Roberts')
#actors << Actor.new('John Candy')
#actors << Actor.new('Anthony Hopkins')
#actors << Actor.new('George Clooney')

# Now that we have all the actors' details, analyse their films to
# see which films had common actors
actors.each do |actor|

  actor.films.each do |film_title|
    film = Film.new(film_title, actor.name)
    key = film.short_title
    
    # If this film doesn't already exist in the films hash, add it
    if films[key].nil?
      films[key] = film

    # Otherwise add this actor to the existing film's cast. Append
    # this film to the common_films array since it contains multiple
    # actors from our actors array
    else
      films[key].cast << actor.name
      common_films << film_title
    end
  end
end

# Report films with more than one actor from the actors array. These
# are stored by title in the common_films array
puts
puts 'These films contain multiple actors we\'re interested in:'
puts

common_films.each do |film_title|
  short_title = film_title.gsub(' ', '')
  film = films[short_title]
  puts "#{film.title} features #{film.cast.join(', ')}"
end
