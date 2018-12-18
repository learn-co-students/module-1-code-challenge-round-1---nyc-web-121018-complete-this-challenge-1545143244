class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = [] #stores all Review instnaces

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end

  def self.all # returns @@all class variable
    @@all
  end

  # --------- End class methods --------------
  # --------- Start instance methods ---------



end #end of Reveiw class 
