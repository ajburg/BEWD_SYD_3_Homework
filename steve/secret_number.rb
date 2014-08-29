#!/usr/bin/env ruby
# have players guess a secret number from 1-10.

def report_error
  puts 'invalid arguments: expecting a number between 0 and 10'
end

def check_args(value)
  # Check that there is one integer argument, between 0 and 10
  begin
    x = Integer(value)
    if x < 0 || x > 10
      report_error
    end
  rescue
    report_error
  end
  return x
end

# **********************************************************************
# Check that only one integer between 0-10 has been specified as the secret
if ARGV.length != 1
  report_error
  exit
end
secret_num = check_args(ARGV[0])

# Post the rules
puts 'Try to guess the secret number (it was in the arguments...)'
puts

# Allow 3 attempts to guess the secret number
attempts = 1
hint = ''
while attempts < 4
  puts 'Please enter guess #' + attempts.to_s + ':' + hint
  guess = check_args($stdin.gets.chomp)
  if guess.class == Fixnum
    attempts += 1
    if guess == secret_num
      puts 'You got it!'
      exit
    elsif guess > secret_num
      hint = ' (hint: lower)'
    elsif guess < secret_num
      hint = ' (hint: higher)'
    end
  else
    hint = ''
  end
end

puts 'Sorry, you lose. Secret number was actually '  + secret_num.to_s

