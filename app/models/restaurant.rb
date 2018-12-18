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
    Review.all.select do |review|
      review.customer == self.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    avg = reviews.reduce / reviews.length
  end

  def longest_review
    reviews = Review.all.select { |review| review.}

    longest_length = 0
    longest = Review.all.map do |review|



  end

end
