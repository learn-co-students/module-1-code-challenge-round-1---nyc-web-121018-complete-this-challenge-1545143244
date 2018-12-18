require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console




cust_1 = Customer.new("Shari", "Rosenberg")
cust_2 = Customer.new("Rachel", "Tappe")
cust_3 = Customer.new("Mary", "Cialone")


rest_1 = Restaurant.new("Canyon Road")
rest_2 = Restaurant.new("Pigalle")
rest_3 = Restaurant.new("Blue Fin")

review_1 = Review.new("Great", rest_1, cust_2, 4, "blah")
review_2 = Review.new("Great", rest_1, cust_1, 3, "nanan")
review_3 = Review.new("Great", rest_2, cust_1, 5, "bweew")
review_4 = Review.new("Great", rest_2, cust_2, 5, "saedkfj")
review_5 = Review.new("Great", rest_2, cust_3, 2, "sdf")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
