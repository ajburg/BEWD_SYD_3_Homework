#Arrays
#TIME: 15 min
#INSTRUCTIONAL DESIGN NOTES: 
# => This code along is meant to be completed in irb. 
# => We want students to have a general understanding of arrays. 
# => Show how they can find examples and more methods for arrays in the ruby docs.


def reportStudents(students)
  puts "\nThere are " + students.length.to_s + " students"
  puts "the first student is " + students.first.to_s
  puts "The second student is " + students[1].to_s
  puts "the last student is " + students.last.to_s
end
# Create a new array and assign it to a variable
a = []
# Check its class
#puts "Array is of type " + a.class.to_s

# Reiterate that a class tells you what things this object can respond to
# Create a staff array with the instructor and TAs names
students = ["Shirren","Steve", "Amit"]

# Show getting size with count, size, length, empty?
# Show reading from an array, zero indexing

reportStudents(students)
# Show appending to the array, with push, << and unshift

students.push("Bijal")
reportStudents(students)
# Show popping and shifting

puts "removing the last student using pop"
x = students.pop
reportStudents(students)

# Show how include? works
puts students.include? "Steve"
# Show BANG Methods #sort!, #uniq!, #shuffle!, reverse! 

students.sort!
reportStudents(students)

students.reverse!
reportStudents(students)

students.shuffle!
reportStudents(students)

# Show join, to_s
puts students.join ", "

# Show split from string
