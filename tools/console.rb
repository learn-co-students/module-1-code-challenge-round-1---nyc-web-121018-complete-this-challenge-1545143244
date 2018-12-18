require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# test data :
  # sample customers :
    c1 = Customer.new("Barak", "Obama")
    c2 = Customer.new("Michelle", "Obama")
    c3 = Customer.new("Donald", "Duck")

  #sample restaurants:
    res1 = Restaurant.new("Boqueria")
    res2 = Restaurant.new("Mama's Steak House")
    res3 = Restaurant.new("Island Vibes Bar & Restaurant")

  #sample reviews:
                #customer, restaurant, rating, content
    rev1 = Review.new(c1, res1, 5, "I absolutely loved it! Try any of the tapas!")
    rev2 = Review.new(c2, res2, 4, "I could definitely see myself coming back.")
    rev3 = Review.new(c1, res3, 3, "Not my favorite. But still an ok lunch.")
    rev4 = Review.new(c1, res1, 5, "Still the best!") # test case of second review of same restaurant
    rev5 = Review.new(c3, res1, 4, "Wow!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
