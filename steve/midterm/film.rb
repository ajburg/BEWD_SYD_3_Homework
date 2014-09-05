class Film
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @cast = []
    
    puts "Created a new film: #{@title}"
  end

end