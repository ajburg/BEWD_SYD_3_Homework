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


def get_input
	gets.chomp
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
secret_number = 4

#Creating the loop
while guesses >= 1 do
	guess_number = get_input.to_i
	guesses -=1

	if guess_number == secret_number
		puts 'Congratulations! You guessed it!'
		puts 'Game Over :-)'
	elsif guess_number > secret_number
		puts 'Wrong! You went too high.'
			if guesses > 1
				puts "You have #{guesses} chances to guess. Type another number!"
			elsif guesses == 1
				puts "This is your last chance. Type your number"
			else guesses == 0
				puts "Game Over! The secret number was #{secret_number}"
			end
	else
		puts 'Wrong! Your number is low.'
				if guesses > 1
					puts "You have #{guesses} chances to guess. Type another number!"
				elsif guesses == 1
					puts "This is your last chance. Type your number"
				else guesses == 0
						puts "Game Over! The secret number was #{secret_number}"
				end
	end
end