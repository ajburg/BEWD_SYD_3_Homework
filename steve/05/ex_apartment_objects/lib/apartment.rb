#Apartment class.
class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms

  def initialize(name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
  end
end
