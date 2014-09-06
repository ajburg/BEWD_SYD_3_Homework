class Actor
  attr_accessor :name
  attr_accessor :films
  
  def initialize(name)
    @name = name
    @films = []
  end
  
end