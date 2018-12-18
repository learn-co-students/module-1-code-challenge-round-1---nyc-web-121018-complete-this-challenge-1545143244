class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    name_array = full_name.split(" ")
    first_n = name_array[0]
    last_n = name_array[1]
    @@all.find do |customer|
      customer.first_name == first_n && customer.last_name == last_n
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end


  def add_review(restaurant, content, rating)
    #(customer, restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    my_reviews.length
  end

  def restaurants
    result = my_reviews.map do |review|
      review.restaurant
    end
    result.uniq
  end




end #end of Customer class
