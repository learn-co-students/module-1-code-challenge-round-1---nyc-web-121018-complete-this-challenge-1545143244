class Restaurant
  attr_accessor :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant_name|
      restaurant_name.name == name
    end
  end

  def customers
    Review.all.select do |customer|
      customer.restaurant == true
      ## I know this method returns an empty array, I am not sure how to
      ## return the customers in the array.
    end
  end

  def reviews
    Review.all.select do |restaurant|
      restaurant.review == self
    end
  end

  ## Did not make it to last two methods

  ## average_star_rating method should iterate over all of the ratings
  

end
