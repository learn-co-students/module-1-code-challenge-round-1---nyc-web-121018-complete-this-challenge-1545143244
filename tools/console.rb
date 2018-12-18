require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Name1","LName1")
c2 = Customer.new ("Name2","LName2")


r1 = Restaurant.new("","")
r2 = Restaurant.new("","")

rev1 = Review.new(r1, c1, 3, "Testing ok")
rev2 = Review.new(r2, c2, 4,"Testing ok")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
