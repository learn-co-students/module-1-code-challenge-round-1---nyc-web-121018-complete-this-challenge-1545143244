# **JOINER TABLER **
class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []


  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
  # - `Review.all`
  #   - returns all of the reviews

  def self.customer

  end
  # - `Review#customer`
  #   - returns the customer object for that given review
  #   # - Once a review is created, I should not be able to change the author


  def self.restaurant

  end
  # - `Review#restaurant`
  #   - returns the restaurant object for that given review
  #   - Once a review is created, I should not be able to change the restaurant

  def self.rating
    "I give this restaurant #{fixnum} stars"
  end
  # - `Review#rating`
  #   - returns the star rating for a restaurant. This should be an integer from 1-5

  def self.content
    "#{content}"
  end
  # - `Review#content`
  #   - returns the review content, as a string, for a particular review


end
#end of review class


# - `Review.all`
#   - returns all of the reviews
# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review
