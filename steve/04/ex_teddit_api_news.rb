#!/usr/bin/env ruby
require 'json'
require 'rest-client'

def calculate_upvotes(story)
  story[:upvotes] = 1
  if story[:title].downcase.include?('iphone')
    story[:upvotes] *= 5
  elsif story[:title].downcase.include?('taco')
    story[:upvotes] *=8
  end
  if story[:category].downcase == "tech"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  stories.each do |story|
    puts
    puts story[:title].upcase + ' by ' + story[:source] + ' (' + story[:category] + ')'
    puts story[:content][0..77] + '...'
    puts 'Votes: ' + story[:upvotes].to_s   
  end
end

def construct_story_hash(title, category, source, content, link)
  { :title => title, :category => category, :upvotes => 0, :source => source, :content => content, :link => link}
end

def process_mashable_stories(stories)
  data = RestClient.get('http://mashable.com/stories.json')
  json_data = JSON.parse(data)
  keys = json_data.keys
  keys.each do |key|
    articles = json_data[key]
    if articles != nil
      articles.each do |article|
        title = article['title'].upcase
        author = article['author']
        content = article['content']['plain']
        link = article['link']
        shares = article['shares']['total']
        category = article['channel']
        story = construct_story_hash(title, category, author, content, link)
        calculate_upvotes(story)
        stories.push(story)
      end
    end
  end
end

stories = []
puts 'Getting stories from Mashable'
process_mashable_stories(stories)
show_all_stories(stories)
