class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end

  end

  def customers
    my_customers = Review.all.select do |reviews|
      reviews.restaurant == self
    end

    my_customers.map do |reviews|
      reviews.customer
    end

  def reviews
    Reviews.all.map do |reviews|
      reviews.restaurant
    end
  end


  end

  def average_star_rating #have to go to reviewc lass to check the ratings of me
                          #and then have to average them (I'm not sure how to average)
  end

  def longest_review #have to go to review class to check my reviews, and check the length
                      #of the sting for my content
  end



end

#- `Restaurant.all`
  #- returns an array of all restaurants
#- `Restaurant.find_by_name(name)`
  #- given a string of restaurant name, returns the first restaurant that matches


  #- `Restaurant#customers`
    #- Returns a **unique** list of all customers who have reviewed a particular restaurant.
  #- `Restaurant#reviews`
    #- returns an array of all reviews for that restaurant
  #- `Restaurant#average_star_rating`
    #- returns the average star rating for a restaurant based on its reviews
  #- `Restaurant#longest_review`
    #- returns the longest review content for a given restaurant
