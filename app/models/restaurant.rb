class Restaurant
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end


  # def average_star_rating
    #get an array of ratings for this restaurant instance
    #sum the ratings and divide by the length of the array
  # end

  #def longest_review
    #get an array of content for this restaurant instance
    #sort by length of content (should sort by shortest to longest)
    #return last review
  #end

end
