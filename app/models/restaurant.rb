class Restaurant
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name = name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    x = 0
    reviews.each do |review|
      x+=review.rating
    end
    return x/(reviews.length/1.0)
  end

  def longest_review
    reviews.max_by {|review|review.content.length}.content
  end





end
