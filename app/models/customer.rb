class Customer
  attr_accessor :first_name, :last_name

  @@all = [] #stores all Customer instnaces

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all # returns @@all class variable
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name} #find first
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name} #select all
  end

  def self.all_names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  # --------- End class methods --------------
  # --------- Start instance methods ---------

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating) #the customer instance creates the new review
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews #helper method I created to get all of the customers reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews #Returns the total number of reviews that a customer has authored
    self.my_reviews.count  #calls helper method frist and then counts the review instances to get number
  end

  def restaurants
    my_restraunts = self.my_reviews.map {|review| review.restaurant}
    my_restraunts.uniq 
  end

end #end Customer class
