class Restaurant

  @@all = []
  #creates an array of all restaurant instances

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end
  # - `Restaurant.all`
  #   - returns an array of all restaurants

  def self.find_by_name(name)

  end
  # - `Restaurant.find_by_name(name)`
  #   - given a string of restaurant name, returns the first restaurant that matches
  #

  def self.customers

  end
  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  #
  def self.reviews
    Reviews.all
  end
  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant

  def self.average_star_rating

  end
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews

  def self.longest_review

  end
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant


end
#end of restaurant class


# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches
#

  #
  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant
