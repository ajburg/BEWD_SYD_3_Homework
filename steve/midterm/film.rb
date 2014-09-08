class Film
  attr_accessor :title
  attr_accessor :short_title
  attr_accessor :cast
  
  def initialize(title, actor_name)
    #Generate a new film, comprising the title and this actor's name
    #Also generate a short_title with no spaces, which is used as the key
    @title = title
    @short_title = title.gsub(" ","")
    @cast = [actor_name]
  end

end