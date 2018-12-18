require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Mary", "Peterson")
c2 = Customer.new("John", "Smith")
c3 = Customer.new("John", "Jones")
c4 = Customer.new("Terry", "Kim")
c5 = Customer.new("Emily", "Rells")

r1 = Restaurant.new("McDonalds")
r2 = Restaurant.new("Wendys")
r3 = Restaurant.new("Burger King")

re1 = Review.new(c1, r2, 4, "It was OK")
re2 = Review.new(c2, r2, 8, "I love this restuarant")
re3 = Review.new(c3, r2, 7, "It was fun")
re4 = Review.new(c4, r2, 7, "Cool place")
re5 = Review.new(c1, r2, 2, "I hated it")
re6 = Review.new(c5, r2, 9, "I loved my waiter")
re7 = Review.new(c4, r2, 2, "Nothing was good")
re8 = Review.new(c5, r2, 9, "Would eat here again")
re9 = Review.new(c3, r2, 10, "Highly recommend")







# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
