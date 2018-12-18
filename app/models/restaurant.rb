class Restaurant
  attr_accessor :name

  @@all = [] #stores all Restaurant instnaces

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all # returns @@all class variable
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name} #find first
  end

  # --------- End class methods --------------
  # --------- Start instance methods ---------

  def my_reviews #helper method I created to get all of the restaurant reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    my_customers = self.my_reviews.map {|review| review.customer} #used helper method my_reviews
    my_customers.uniq
  end

  def reviews
    self.my_reviews #gets all review instances for the restaurant this method is called on
  end

  def average_star_rating
    rating_array = self.my_reviews.map {|review| review.rating}
    sum = 0
    rating_array.each {|score| sum += score}
    sum.to_f / rating_array.length
  end

  def longest_review
    #use sort
    content_array = self.my_reviews.map {|review| review.content} #get array of content
    sorted = content_array.sort_by {|content| content.length }
    sorted.last 
  end
end #end of Restaurant class
