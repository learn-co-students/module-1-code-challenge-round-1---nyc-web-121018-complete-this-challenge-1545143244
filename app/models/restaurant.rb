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
    self.all.find { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers # using reviews helper method
    customers = reviews.map {|review| review.customer }
    customers.uniq
  end

  def average_star_rating
    ratings = 0
    reviews.each {|review| ratings += review.rating }
    average_star_rating = ratings.to_f/reviews.count
  end

  def longest_review
    sorted_reviews = reviews.sort_by {|review| review.content.length }
    sorted_reviews.last
  end

end
