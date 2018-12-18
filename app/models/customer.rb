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
    first_name = full_name.split(" ")[0]
    self.all.find do |cust|
      cust.first_name == first_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.find_all do |cust|
      cust.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |cust|
      cust.full_name
    end
  end

  def add_review(restaurant, content, rating)
    new.Review(restaurant, self, content, rating)
  end

  def num_reviews
    all_reviews = Review.all.find_all do |review|
      review.customer == self
    end

    all_reviews.count
  end

  def restaurants
    Restaurant.all.find_all do |restaurant|
      restaurant.customer ==  self
    end
  end

end
