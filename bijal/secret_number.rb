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

def gets_input
	gets
end

secret_number = 7


puts "Welcome to the Secret Number game"
puts "What is your name?"
player_name = gets_input
puts "Hi #{player_name}"
puts " The objective of the game is to have players guess a secret number from 1-10. You only have three guesses. Good luck"
puts "Tell me your first guess"

a = gets

if a.to_i < 7
	puts x = "Too Low! Guess again. You have two guesses left before the game is over! Enter another number!"
elsif a.to_i > 7
	puts x = "Too high! Guess again. You have two guesses left before the game is over! Enter another number!"
else 
	puts x = "Congratulations! That is correct"
end

b = gets

if b.to_i < 7
	puts y = "Too Low! Guess again. You have one guess left before the game is over! Enter another number!"
elsif b.to_i > 7
	puts y = "Too High! Guess again. You have one guess left before the games is over! Enter another number!"
else
	puts y = "Congratulations! That is correct"
end

if y != "Congratulations! That is correct"

c = gets

	if c.to_i < 7
	puts "Too Low! Am sorry you have lost the game. Game over! The answer was #{secret_number}"
				elsif c.to_i > 7
					puts "Too High! Am sorry you have lost the game. Game over! The answer was #{secret_number}"
	else puts "Congratulations! That is correct!"
	end
end
