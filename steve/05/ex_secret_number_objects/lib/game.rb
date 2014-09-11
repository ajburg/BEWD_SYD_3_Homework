require 'lib/person'
require 'lib/secret_number'

class Game
  attr_reader :guess_idx
  attr_reader :guesses
  attr_reader :secret_num
  def initialize
    @secret_num = SecretNumber.generate_random_number
    @guess_idx = 0
    @guesses = 3
  end
  
  def start
    puts 'started the game'
#    byebug
    
  end
  
end
