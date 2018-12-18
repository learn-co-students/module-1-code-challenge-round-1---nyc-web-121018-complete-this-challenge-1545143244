require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("sam", "hyatt")
c2 = Customer.new("cheese", "cake")
c3 = Customer.new("brooklyn", "bridge")

r1 = Restaurant.new("Subway")
r2 = Restaurant.new("Burger King")
r3 = Restaurant.new("Steak House")

rev1 = Review.new(r1, c1, 4, "It's good")
rev2 = Review.new(r2, c2, 3, "It's ok")
rev3 = Review.new(r3, c3, 1, "It's really bad")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
