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

# This is the introduction, welcoming the player and getting their name
puts "Hi There. Welcome to the Secret Number Game."
puts "I'm Gareth. I created this game."

puts "What's your name?"
player_name = gets.chomp 											## Takes player input and gets rid of the newline

puts "Hi " + player_name + "!"

puts"Here's how the Secret Number Game works..."
puts "You have to guess the Secret Number which is a number between 1 and 10, but you only have 3 tries to do so."
puts "Ok, lets begin:"

# Below is the code for the game
secret_number = 2
count = 3
while count > 0														## This it the conditional loop giving the player 3 guesses
	puts player_name + ", you have " + "#{count}" + " guesses left before the game is over"
	puts "What's your guess (a number between 1 and 10)?"
	player_guess = gets.to_i 										## takes player input and converts it to an integer
	count -= 1 														## Reduces the number of guesses by 1 each time in order to progressively finish the while loop
	if player_guess == secret_number 								## If player guesses correct, it tells them they won and ends the game
		puts "Congratulations " + player_name + "!! You guessed correct! You WIN!!"
		puts "Well done. I'll have to make my game harder for next time!"
		count = 0													## Making count = 0 ends the while loop, in order to end the game
	else															## If player guesses incorrect it takes this path
	puts "Sorry " + player_name + ", that guess is incorrect!"
		if count == 0 												## If there are no guesses left it finishes the game and tells them they lost
			puts "Unfortunately " + player_name + " you're out of guesses. You LOST!!"
			puts "Just to rub it in... The Secret Number was " + "#{secret_number}"
			puts ":P"
		else 														## But if there are still guesses left, it gives them a hint for their next guess
			if player_guess > secret_number
			puts "But here's a hint, you might want to guess a little lower next time..."
			puts "Ok, lets go again:"
			end
			if player_guess < secret_number
			puts "But here's a hint, you might want to guess a little higher next time..."
			puts "Ok, lets go again:"
			end
		end

	end
end




