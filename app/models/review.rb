class Review

  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def self.all
    @@all
  end
                  # restaurant, content, rating
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating

    @@all << self
  end

  #THE BELOW ALL WORK BECAUSE THEY ARE SET AS ATTR-READER MACROS 
  # def customer
  #   @customer
  # end
  #
  # def restaurant
  #   @restaurant
  # end
  #
  # def rating
  #   @rating
  # end
  #
  # def content
  #   @content
  # end

end
