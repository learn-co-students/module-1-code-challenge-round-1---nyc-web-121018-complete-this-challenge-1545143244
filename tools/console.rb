require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#SCHEMA
#Restaurant >---< Customer
#Restaurant --<Review>--Customer


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('John', 'Goodman')
c2 = Customer.new('Jane', 'Doe')
c3 = Customer.new('Jane', 'Goodman')
c4 = Customer.new('herp', 'derp')
c5 = Customer.new('matt', 'mattson')


rest1 = Restaurant.new('Pizzaria')
rest2 = Restaurant.new('Bistro')
rest3 = Restaurant.new('Pizzaria')
rest4 = Restaurant.new('Diner')

                  #customer, restaurant, rating, content
rev1 = Review.new(c1, rest1, 2, "horrible pizzas argggggg")
rev1 = Review.new(c2, rest3, 5, "great pizzas")
rev1 = Review.new(c3, rest2, 3, "it was okay")
rev1 = Review.new(c3, rest4, 5, "AMAZING")
rev1 = Review.new(c2, rest1, 1, "bad")
rev1 = Review.new(c4, rest1, 1, "ugh")
rev1 = Review.new(c5, rest1, 1, "rough")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
