#!/usr/bin/env ruby
# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'

def calculate_upvotes(story)
  story[:upvotes] = 1
  if story[:title].downcase.include?('cat')
    story[:upvotes] *= 5
  elsif story[:title].downcase.include?('bacon')
    story[:upvotes] *=8
  end
  if story[:category].downcase == "food"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  stories.each do |story|
    puts "Story: #{story[:title][0..30].gsub(/\s\w+\s*$/, '...')}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}, Source: #{story[:source]}"
  end
end

def construct_story_hash(title, category, source)
  { :title => title, :category => category, :upvotes => 0, :source => source }
end

def process_mashable_stories(stories)
  data = RestClient.get('http://mashable.com/stories.json')
  json_data = JSON.parse(data)
  keys = json_data.keys
  keys.each do |key|
    stories = json_data[key]
    if stories != nil
      puts
      puts key.upcase + ':'
      puts
      stories.each do |story|
        title = story['title'].upcase
        author = story['author']
        content = story['content']['plain']
        puts title + ' (by ' + author + ')'
        puts truncate(content)
      end
    end
  end
end

def process_digg_stories(stories)
  puts stories
end

def show_all_stories(stories)
  puts stories
end
stories = []

puts 'Getting stories from Mashable'
process_mashable_stories(stories)

#puts 'Getting stories from Digg'
#process_digg_stories(stories)

show_all_stories(stories)
