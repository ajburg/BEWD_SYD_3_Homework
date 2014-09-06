class Film
  attr_accessor :title
  attr_accessor :short_title
  attr_accessor :cast
  
  def initialize(title, actor_name)
    @title = title
    @short_title = title.gsub(" ","")
    @cast = [actor_name]
  end

end