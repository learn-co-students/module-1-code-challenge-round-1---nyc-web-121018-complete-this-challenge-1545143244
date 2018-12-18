require_relative '../config/environment.rb'
require_rel '../app'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Marcus", "Plenty")
c2 = Customer.new("Kenya", "Plenty")
c3 = Customer.new("Marcus", "Jackson")

r1 = Restaurant.new("Hooters")
r2 = Restaurant.new("Burger King")

rw1 = Review.new(c1,r1,9,"Awesome")
rw2 = Review.new(c1,r2,10,"Bad")
rw3 = Review.new(c2,r2,5,"Worse")
rw4 = Review.new(c1,r1,4,"Eh")
rw5 = Review.new(c3,r2,10,"Bad")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
