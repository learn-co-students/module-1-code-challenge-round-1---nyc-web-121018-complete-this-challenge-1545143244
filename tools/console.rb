require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
  load 'app/customer.rb'
  load 'app/restaurant.rb'
  load 'app/review.rb'
end

c1 = Customer.new("Harlan Green")
c2 = Customer.new("John Smith")
c3 = Customer.new("Bob Jones")

res1 = Restaurant.new("Fiddlesticks")
res2 = Restaurant.new("McDonalds")
res3 = Restaurant.new("Popeyes")

rev1 = Review.new(c1, res2, 5)
rev2 = Review.new(c2, res1, 4)
rev3 = Review.new(c3, res1, 10)
rev4 = Review.new(c2, res3, 8)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
