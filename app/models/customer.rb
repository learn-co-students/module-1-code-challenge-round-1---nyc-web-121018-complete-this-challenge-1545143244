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
  #tests passed

  def self.find_by_name(full_name_string)
    #separate the "full name" string
    #search through the array of all customers
    #find the matching name

    full_name_arr = full_name_string.split

    self.all.find{|customer|customer.first_name == full_name_arr[0] && customer.last_name == full_name_arr[1]}
  end
  #tests passed!

  def self.find_all_by_first_name(first_name_string)
    self.all.select{|customer|customer.first_name == first_name_string}
  end
  #tests passed!

  def self.all_names
    self.all.map{|customer|customer.full_name}
  end
  #tests passed!

  def add_review(restaurant, content, rating)
              #(customer, restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
  #tests passed!

  def reviews
    Review.all.select{|review|review.customer == self}
  end

  def num_reviews
    counter = 0
    reviews.each{|review|counter+=1}
    counter
  end
  #tests passed!

  def restaurants
    reviews.map{|review|review.restaurant}
  end
  #tests passed!

end
