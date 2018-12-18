class Review

  attr_reader :restaurant, :customer, :content, :rating

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.all.find do |review|
      review.customer == self.customer
    end
  end

  def restaurants
    self.all.find do |review|
      review.restaurant == self.restaurant
    end
  end

  def rating
    self.all.find do |review|
      review.rating == self.rating
    end
  end

  def content
    self.all.find do |review|
      review.content == self.content
    end
  end

end
