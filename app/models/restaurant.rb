class Restaurant
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end


  #Class Methods
 #  `Restaurant.all`
 #   - returns an array of all
 #restaurants
 #done with @@all

 # - `Restaurant.find_by_name(name)`
 #   - given a string of
 #restaurant name, returns the first restaurant that matches
def self.find_by_name(name)
self.all.find do|restaurant|
  restaurant.name
end
end



end#end class
