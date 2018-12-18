class Customer
  attr_accessor :first_name, :last_name


   @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.select do |customer|
      customer.full_name == full_name

    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def add_review(restaurant, rating=0, content)
    Review.new(restaurant, self, rating=0, content)
  end

  def num_reviews
    Review.all.select do |reviews|
      reviews.customer == self

    end
  end

  def restaurants
    Review.all.map do |reviews|
      reviews.restaurant
    end
  end






end


#- `Customer.all`
  #- should return **all** of the customer instances
#- `Customer.find_by_name(name)`
  #- given a string of a **full name**, returns the **first customer** whose full name matches
#- `Customer.find_all_by_first_name(name)`
  #- given a string of a first name, returns an **array** containing all customers with that first name
#  - should return an **array** of all of the customer full names

#- `Customer#add_review(restaurant, content, rating)`
  #- given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
#- `Customer#num_reviews`
  #- Returns the total number of reviews that a customer has authored
#- `Customer#restaurants`
  #- Returns a **unique** array of all restaurants a customer has reviewed
