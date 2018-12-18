class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end
  # - `Customer.all`
  #   - should return **all** of the customer instances

  def full_name
    "#{first_name} #{last_name}"
  end
  #flattens first and last names

  def self.find_by_name(name)
    all_names.find do |customer|
      customer.full_name == name
    end
  end
  # - `Customer.find_by_name(name)`
  #   - given a string of a **full name**, returns the **first customer** whose full name matches

  def self.find_all_by_first_name(name)
    first_name.map do |customer|
      customer.first_name == name
    end
  end
    # `Customer.find_all_by_first_name(name)`
    #  - given a string of a first name, returns an **array** containing all customers with that first name

  def self.all_names
    self.all.full_name
  end
  # - `Customer.all_names`
  #   - should return an **array** of all of the customer full names
  #   .flatten

  def self.add_review(restaurant, content, rating)
    Review.new

  end
  # - `Customer#add_review(restaurant, content, rating)`
  #   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  #

  # WRITE A HELPER METHOd#

  def self.reviews(customer_name)
      customer_name = self
    Review.map do |review|
      review.customer == customer_name
    end
  end
  #helper method that finds all the reviews a customer has authored


  def self.num_reviews

    # .count
  end
    # - `Customer#num_reviews`
    #   - Returns the total number of reviews that a customer has authored


  def self.restaurants
    Review.
  end
  # `Customer#restaurants`
  #  - Returns a **unique** array of all restaurants a customer has reviewed

end
#end of customer class



# - `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
#
#
#   - `Customer#add_review(restaurant, content, rating)`
#     - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
#   - `Customer#num_reviews`
#     - Returns the total number of reviews that a customer has authored
#   - `Customer#restaurants`
#     - Returns a **unique** array of all restaurants a customer has reviewed
