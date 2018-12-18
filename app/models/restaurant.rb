class Restaurant
  attr_accessor :name

  @@all = []

  #Restaurant.all
  #returns an array of all restaurants
  def self.all
    @@all
  end

  #Restaurant.find_by_name(name)
  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
    ## find for first and only first
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  ## need reviews method to link restaurants to Review joiner class
  #   returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  ## customers method uses reviews method above to link Restaurant with Customer
  #   Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    reviews.map {|review| review.customer}
  end

  # helper method for average_star_rating
  # averages an array, reusable
  def average(array)
    sum = 0
    array.each {|integer| sum += integer}
    sum.to_f / array.length
  end

  # helper method for average_star_rating
  # returns array of all ratings as integers
  def star_ratings
    reviews.map {|review| review.rating}
  end

  # Restaurant#average_star_rating
  # returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    average(self.star_ratings)
  end

  # helper method for below method
  # sorts reviews by content string length
  def reviews_by_length
    #binding.pry
    reviews.sort_by{ |review| review.content.length}
  end

  # Restaurant#longest_review
  # returns the longest review content for a given restaurant
  def longest_review
    # returns last review from above method
    reviews_by_length[-1]
  end

end ## <<-- end of Restaurant class
