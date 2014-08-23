#TEDDIT:  Strings - Student's File
#	Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#	This exercise will be used throughout the ruby portion of this course. 
#	Each lesson we will incrementally build a news aggregator. 
#	Lesson 4 we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
#	But until then we will hard code stories.


#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Only run one version at a time so you can see the difference.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
#
#'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#'Story: Man raised by wolverines, then eaten Current upvotes: 4'

puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"

#Version 2 - Replace the story title and upvotes with variables.
###########
###########
story="Man raised by wolverines, then eaten"
upvotes= 4

puts "Story: #{story} - Current Upvotes: #{upvotes}"


#Version 3 - Add data type casting (fix casting issue).
###########
###########


puts "Story: #{story} - Current Upvotes: #{upvotes.to_s}"

#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########

puts "Story: #{story}\nCurrent Upvotes: #{upvotes}"

#Version 5 - Adding methods
###########
###########

def text_input
  gets.chomp
end

puts "Please enter your story"
story= text_input
puts "Please enter the number of upvotes"
upvotes=text_input

puts "Story: #{story}\nCurrent Upvotes: #{upvotes.to_s}"


