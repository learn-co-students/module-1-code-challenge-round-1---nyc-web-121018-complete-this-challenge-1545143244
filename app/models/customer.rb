class Customer
  attr_accessor :first_name, :last_name

  @@all =[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end
  end

  def self.find_by_name(name)
     self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.find do |customer|
      found = self.all.find {|customer| customer.full_name.split[0] == name}
    end
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating) #restaurant, customer, content, rating
    Review.new(restaurant, self, content, rating)
  end

  # def num_reviews
  #   reviews.customer == self
  # end

  # def average_star_rating
  #   #find average star rating of restaurant
  # end
  #






end
