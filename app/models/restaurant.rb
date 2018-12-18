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
  #tests passed!

  def self.find_by_name(name)
    self.all.find{|restaurant|restaurant.name == name}
  end
  #tests passed!

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end
  #tests passed!

  def customers
    reviews.map{|review|review.customer}
  end
  #tests passed!

  def average_star_rating
    #go through each review's average
    #add them togeather and dived by the number of each rateing
    counter = 0
    review_rating_arr = []
    sum = 0
    reviews.each{|review|review.rating >> review_rating_arr && counter +=1}
    review_rating_arr.each{|num|sum += num}
    average = sum / counter
    binding.pry
    average
  end
  #not compeleted

  def longest_review
    #go through each review's content
    #find the longest string
    reviews.max_by{|review|review.content.length}
  end
  #tests passed!

end
