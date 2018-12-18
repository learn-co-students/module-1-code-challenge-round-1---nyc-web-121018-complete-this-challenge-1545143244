require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("John","Glenn")
c2 = Customer.new("Sarah","Connor")
c3 = Customer.new("Octavia","Spencer")
c4 = Customer.new("Claire","Denis")
c5 = Customer.new("Claire","Saffitz")

r1 = Restaurant.new("Bombay Bread Bar")
r2 = Restaurant.new("ROKC")
r3 = Restaurant.new("Eleven Madison Park")
r4 = Restaurant.new("McDonald's")

## (rating, content, customer, restaurant)
v1 = Review.new(5, "wow", c1, r2)
v2 = Review.new(5, "yass", c2, r1)
v3 = Review.new(5, "amazing", c3, r1)
v4 = Review.new(4, "love it stoked to go again", c1, r1)
v5 = Review.new(2, "no thanks",  c2, r3)
v6 = Review.new(3, "meh",  c2, r4)
v7 = Review.new(1, "ew", c4, r2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
