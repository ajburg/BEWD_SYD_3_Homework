# Step 1: Working with Arrays and Hashes

def calculate_upvotes(title)
  upvotes = 1
  if title.include? 'cats'
    upvotes = 5
  elsif title.include? 'bacon'
    upvotes = 8
  end
  return upvotes
end

# Initialise the story collection with the starter story
stories = [{ title: 'Monkeys thank mayor for flounder tooth necklace',
  category: 'Teeth', votes: 1 }]

puts 'Welcome to Teddit! Get today\'s news tomorrow!'

# Keep looping until the user enters a blank line
loop do
  puts 'Please enter a new story (blank to cancel):'
  title = gets.chomp
  break if title == ''
  puts 'Please give it a category:'
  a_category = gets.chomp
  upvotes = calculate_upvotes(title)
  a_story = { title: title, category: a_category, votes: upvotes }
  stories.push(a_story)
end

puts 'Current stories are:'
stories.each do |story|
  puts "Story: #{story[:title]} in Category: #{story[:category]} (#{story[:votes]} votes)"
end
