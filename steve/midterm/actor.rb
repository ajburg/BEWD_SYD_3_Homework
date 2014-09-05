class Actor
  attr_accessor :name
  attr_accesstor :filmography
  
  def initialize(name)
    @name = name
    @filmography = []
    puts "created a new actor: #{@name}"
  end
  
end