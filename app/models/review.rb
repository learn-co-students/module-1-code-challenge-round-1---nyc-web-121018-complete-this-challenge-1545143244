#I assumed that author == customer, because they are the
#ones writing the reviews...

class Review
  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  #I couldn't figure out how to restrict the input of
  # a number rating as an argument, so I decided to just
  # limit the rating to 5 when the user cals Review#rating

  def rating
    if @rating > 5
      5
    elsif @rating < 0
      0
    else
      @rating
    end
  end

end #end of review class
