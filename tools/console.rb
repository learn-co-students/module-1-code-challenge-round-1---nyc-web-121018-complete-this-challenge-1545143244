require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#Restaurants (name)
  lpq = Restaurant.new("Le Pain Quotidian")
  tb = Restaurant.new("Taco Bell")
  bww = Restaurant.new("Buffalo Wild Wings")

#Customer (first_name, last_name)
  ari = Customer.new("arianna", "geordiadis")
  adam = Customer.new("adam", "ignotofsky")
  keyla = Customer.new("keyla", "payano")

#Reviews (restaurant, customer, content, rating)
  r1 = Review.new(lpq, ari, "I love the avo toast", 3)
  r2 = Review.new(tb, adam, "It's my drunk food go to", 5)
  r3 = Review.new(bww, keyla, "You gotta do Wing Tuesday!", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
