class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  #Customer.all
  #should return all of the customer instances
  def self.all
    @@all
  end

  #Customer.find_by_name(name)
  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find {|customer| (customer.first_name + " " + customer.last_name) == name }
    ## concats first and last names with space, checks against given string
  end

  #Customer.find_all_by_first_name(name)
  #given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
    ## select : returning customer objects with matching first names
  end

  #Customer.all_names
  #should return an array of all of the customer full names
  def self.all_names
    self.all.map {|customer| customer.first_name + " " + customer.last_name}
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # Customer#add_review(restaurant, content, rating)
  # given a restaurant object, some review content (as a string),
  # and a star rating (as an integer), creates a new review
  # and associates it with that customer and restaurant
  def add_review(rating, content, restaurant)
    ##(rating, content, customer, restaurant)
    Review.new(rating, content, self, restaurant)
  end

  #Customer#num_reviews
  #Returns the total number of reviews that a customer has authored
  def num_reviews
    self.reviews.count
  end

  ## need a reviews method to link customer to their reviews
  def reviews
    Review.all.select {|review| review.customer ==self}
  end

  #Customer#restaurants
  #Returns a unique array of all restaurants a customer has reviewed
  ## uses the reviews method written above
  def restaurants
    reviews.map {|review| review.restaurant}
  end

end ## <<-- end of Customer class
