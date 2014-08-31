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




puts "Welcome to the number guessing game! "
puts "This Game has been created by dan "

puts "Please Enter your Name to begin: "
player_name = gets.chomp

puts "Hello #{player_name}! Welcome to the game!"

puts "Here are some rules to play the game:
		1.) you must pick a number between 1 and 10.
		2.) you only have 3 guesses."


#provide a fixed secret number between 1 and 10
secret_number = 7

#provide 3 guesses
guesses = 3




loop do
puts "enter your guess, you have #{guesses} remaining"
guess = gets.chomp.to_i
guesses -= 1

unless guess == secret_number
message = if guess > secret_number
"Too high"
else
"Too low"
end
puts message
else
puts "You got it!"
puts "It took you #{guesses} guesses."
exit
end
end




#if correct the win game ends

#else
#incorrect give advise i.e too high - too low

#let players know how many goes they have left

#     "You have X many guesses before the game is over enter a another number"
#  -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.

# Remember to cast input from the Player into the appropriate data type.





