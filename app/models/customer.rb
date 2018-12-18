class Customer
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
    self.all.find do |full_name|
      full_name.name == name
    end
  end

  def self.find_all_by_first_name(name)
    ## Not sure if I was supposed to change attr_accessor to :name, tried to use .join
    ## unsuccessfully above. Think this involves using two iterator methods (.select, then .split to split the @name strings into two)
  end

  def self.all_names
    my_name = self.all.select do |full_name|
      full_name.name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    my_reviews = Review.select.all do |review|
      review ##Think that this involes two methods, one to gather all of the customer reviews, another one to tell you the number.
  end
end

  def restaurants

  end
end #<< end of Customer class
