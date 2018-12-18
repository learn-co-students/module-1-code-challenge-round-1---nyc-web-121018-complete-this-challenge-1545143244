#joiner class

class Review
  attr_reader :restaurant, :customer
  attr_accessor :name, :rating, :content
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, restaurant, customer, rating, content)
    @name = name
    @restaurant = restaurant
    @customer= customer
    @rating = rating
    @content = content
    @@all << self
  end

#class methods
  # Review.all`
  #   - returns all of the reviews
  # check done through @@all

  #instance methods"
  # - `Review#customer`
  #   - returns the customer object for that
  #given review
  #   - Once a review is created,
  #I should not be able to change the author
  #check done through @customer


  # - `Review#restaurant`
  #   - returns the restaurant object for that
  #given review
  #   - Once a review is created, I should not
  #be able to change the restaurant
  #check done though @restaurant

  # - `Review#rating`
  #   - returns the star rating for a restaurant.
  #This should be an integer from 1-5
  #done through @rating

  # - `Review#content`
  #   - returns the review content, as a string,
  #for a particular review
  #done through @content


  #not enough time!
  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant
  #

end #end class
