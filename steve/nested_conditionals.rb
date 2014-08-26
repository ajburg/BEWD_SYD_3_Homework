################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 2.5
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################
def checkIsNumber(number)
	begin
		x = Integer(number)
		return true
	rescue
		puts "enter a number dude"
		return false
	end

end

programs_day_of_week = "tuesday"
programs_number = 3

# 1. Let's get input from our User and see if they can guess which day
#    of the week we are thinking of.
#
#    Ask the User, "What day of the week am I thinking of?" and capture
#    their input in the variable `guess`.
puts "guess the day of the week"
guess = gets.chomp

cont = true
while cont
	puts "guess the number"
	numberGuess = gets.chomp
	if checkIsNumber(numberGuess)
		numberGuess = Integer(numberGuess)
		cont = false
	end
end


# 2. By default, `programs_day_of_week` is set to Tuesday. Let's compare
#    our variable to what the User inputted. If they got it right, tell
#    them "Correct!" otherwise tell them "Wrong!"

dayCorrect = false
numberCorrect = false
if guess == programs_day_of_week
	dayCorrect = true
end
if numberGuess == programs_number
	numberCorrect = true
end

if(dayCorrect and numberCorrect)
	puts "right on both counts"
elsif dayCorrect
	puts "at least you got the day right"
elsif numberCorrect
	puts "at least you you got the number right"
else
	puts "you got them both wrong"
end
# 3. Now let's try seeing if two things are true at the same time.
#
#    Ask your User for a day of the week and then for a number. Remember
#    to cast your User's input appropriately when comparing values!
#
#    Then use a conditional to see if both the number and the day of
#    week are correct. If both are correct, tell the User "Correct!"
#
#    If only the number is correct, tell them "Number Correct!"
#
#    If only the day of the week is correct, tell them "Day of week
#    Correct!"
#
#    Otherwise, tell them "Wrong!"


# 4. One last time, ask again for a day of the week and a number, except
#    this time only one of them needs to be correct to "win"! But if
#    they don't guess either correctly, they "lose"!


