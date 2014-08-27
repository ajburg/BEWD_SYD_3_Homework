# Step 1: Working with Arrays and Hashes

# Copy your solution from ex_teddit_conditional.rb in 02_Variables_Conditionals
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#


def calculate_upvotes(title, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
	if title.include? 'cats'
		upvotes = 5
	elsif
		title.include? 'bacon'
		upvotes = 8
	else
		upvotes = 1
	end
	return upvotes
end

#Initialise the story collection with the starter story
stories = [{ title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", votes: 1 }]

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
title = gets.chomp
puts "Please give it a category:"
category = gets.chomp
upvotes = calculate_upvotes(title, category)
story = {title: title, category: category, votes: upvotes}
stories.push(story)

#puts "New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

puts
puts "Current stories are:"
puts

stories.each do |story, category, votes|
	puts "Story: #{story[:title]} in Category: #{story[:category]} (#{story[:votes]} votes)"
end