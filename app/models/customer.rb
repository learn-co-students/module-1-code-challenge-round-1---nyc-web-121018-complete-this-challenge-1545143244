
require 'pry'

class Customer
  attr_accessor :first_name, :last_name
 @@all = []

 def self.all
   @@all
 end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

#instance methods
  def full_name
    "#{first_name} #{last_name}"
  end

  #class methods
  # `Customer.find_by_name(name)`
  #   - given a string of a **full name**,
  #returns the **first customer** whose full name matches

  def self.find_by_name(full_name)
    #I know I need to call on the full_name method and
    # and then compare self to that, aboutcant' seem to get that.
    # self.all.select do|name|
      name.full_name = self
    end
  end

  # - `Customer.find_all_by_first_name(name)`
  #   - given a string of a first name, returns an
  #**array** containing all customers with that first name
  def self.find_all_by_first_name(first_name)
    self.all.select do|name|
    name.first_name = self
  end
end

  # - `Customer.all_names`
  #   - should return an **array** of all of the
  #customer full names
def self.all_names
  Customer.full_name
end

# def add_review(restaurant, content, rating)
#   Review.new(review, restaurant, self, rating, content)
# end


end
#end class
