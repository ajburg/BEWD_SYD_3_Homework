# Write a program that prints 99 bottles of beer on the wall.
# The song starts with

def write_line(idx)

  puts "\n"
  puts idx.to_s + " bottles of beer on the wall"
  puts idx.to_s + " bottles of beer!"
  puts "You take one down and pass it around,"
  idx -= 1
  if idx < 1
    puts "No more bottles of beer on the wall"
  elsif idx == 1
    puts "Only one bottle of beer on the wall"
  else
    puts idx.to_s + " bottles of beer on the wall!"
  end
  return idx
end

idx = 99
while idx > 0
  idx = writeLine(idx) 
end

num = 99
#num.downto(1) do |idx|
#  puts "\n"
#  puts "#{idx} bottles of beer on the wall"
#  puts "#{idx} bottles of beer!"
#  puts "you take one down and pass it around"
#  idx2 = idx - 1
#  puts "#{idx2} bottles of beer on the wall"
#  
#end

#num.times do |x|
#  idx = 99 - x
#  puts "\n"
#  puts "#{idx} bottles of beer on the wall"
#  puts "#{idx} bottles of beer!"
#  puts "you take one down and pass it around"
#  idx2 = idx - 1
#  puts "#{idx2} bottles of beer on the wall"
#  
#  
#end

#
# And ends with
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

# Advanced Implement this using the different ways we've learnt
# to write loops
