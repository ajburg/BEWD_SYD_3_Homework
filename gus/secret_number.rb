###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game.
# In this game players have three tries to guess a secret number between 1 and 10.
#
# Here are some guidelines to building your game:
#
# Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#   and that they only have 3 tries to do so.

def get_input
	get_input_from_terminal = gets
  return get_input_from_terminal
end

# Asking for the name

puts "Welcome to the game. This game was created by Gus. What is your name?"

# Getting player's name
player_name = get_input

#Greeting the player
puts "Hi " + player_name


#Asking for guess_number
puts "You need to guess a number between 1 and 10. You've got three chances!"


#Declaring some variables

guesses=3


#Creating the loop
while guesses >= 1 do 

	secret_number = 4
	guess_number = get_input.to_i
	remaining_guesses = guesses -=1
	

		if guess_number == secret_number
			puts 'Congratulations! You guessed it!'
			puts 'Game Over :-)'
		elsif guess_number > secret_number
			puts "Wrong! You went too high. You have #{remaining_guesses} chances to guess. Type another number!"
				if remaining_guesses == 0
					puts "Game Over! The secret number was #{secret_number}"
				end
		else 	
			puts "Wrong! Your number is low. You have #{remaining_guesses} chances to guess. Type another number!"
				if remaining_guesses == 0
					puts "Game Over :-( The secret number was #{secret_number}"
				end
		end 

end


#
# Functionality:
#  -  Hard code the secret number. Make it a random number between 1 and 10.
#  -  Ask the user for their guess.
#  -  Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#  -  If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#  -  Don't forget to let your players know how many guesses they have left. Your game should say something like
#     "You have X many guesses before the game is over enter a another number"
#  -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

