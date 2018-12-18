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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    result = reviews.map do |review|
      review.customer
    end
    result.uniq
  end

  def ratings
    reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
  end

  def review_articles
    reviews.map do |review|
      review.content
    end
  end

  def longest_review
    review_articles.sort[0]
  end



end #end of restaurant class
