#Boolean - Student's File
#Let the computer do the work for you!

puts "____________________"
puts "Is 7 greater than 8?"
x= 7 > 8
if x==false
	puts "No"
else
	puts "Yes"
end
puts "____________________"


puts "Is 8 x 77 greater than 600?"
x=(8*77)
y=(x > 600)
if y==false
	puts "No"
else
	puts "Yes"
end
puts "____________________"
puts "Is 1 equal to (7 - 6)?"
x=(7-6)
y=(1==x)
if y==true
	puts "Yes"
else
	puts "No"
end
puts "____________________"

puts "Is 77 greater than 50 AND (88 / 3) less than 30?"
x=(77 > 50)
y=(88 / 3) < 30

if x==true
  if y==true
    puts "Yes"
  else
  	puts "No"
  end
else
  puts "No"
end

puts "____________________"

puts "Is the length of the word 'wheelbarrow' more than 10 characters long?"
x="wheelbarrow"
if x.length > 10
  puts "Yes"
else
  puts "No"
end
puts "____________________"

puts "Are the amount of seconds in an hour greater than or equal to 3000?"

x=(60*60)
if x>=3000==true
  puts "Yes - there are #{x} in an hour"
else
  puts "No"
end
puts "____________________"


puts "Does the word 'slaughter' include the word laughter?"
x="slaughter"
y="laughter"
if x.include?(y)
  puts "Yes"
else
  puts "No"
end
puts  "____________________"