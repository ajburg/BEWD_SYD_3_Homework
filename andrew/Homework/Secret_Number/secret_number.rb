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

def input
	gets.chomp
end


finishloop = false
number = rand(1..10)
loopcount = 3
guesscount = 0

puts 'Welcome to Number guesser!'
puts 'What is your name?'
name = input

puts "Welcome #{name}, You have to guess the number between 1 and 10. You have 3 tries to do so."
#until finishloop == true do
while finishloop != true do
	puts "Please enter your guess: (you have #{loopcount} guesses left)"
	guess=input
	puts "Your guess is outside of 1 to 10, its a waste of a guess!" if guess.to_i < 0 || guess.to_i > 10
	if guess.to_i > number
		puts "The number is lower" if loopcount > 1
		guesscount += 1
	elsif guess.to_i < number
		puts "The number is higher" if loopcount > 1
		guesscount += 1
	elsif guess.to_i == number
		guesscount += 1
		puts "You Guessed it! You guessed it in #{guesscount} guesses!"
		puts "Would you like to play again? (yes/no)"
		playagain = input
		if playagain.to_s.upcase == 'YES'
				finishloop = false
				number = rand(1..10)
				loopcount = 3
				guesscount = 0
		else
			finishloop = true
		end
	end
	loopcount -= 1
	if finishloop != true && loopcount==0
		puts "You ran out of guesses! the number was #{number}..."
		puts "Would you like to play again? (yes/no)"
		playagain = input
		if playagain.to_s.upcase == 'YES'
			finishloop = false
			number = rand(1..10)
			loopcount = 3
			guesscount = 0
		else
			finishloop = true
		end
	end
end
puts 'Thanks for playing!'