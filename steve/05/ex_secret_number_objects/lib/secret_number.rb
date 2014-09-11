class SecretNumber
# this class will generate our secret number for us
  def self.generate_random_number
    puts 'generating a secret number between 0 and 9'
    rand(9)
  end
end
