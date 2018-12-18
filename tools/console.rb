require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("customer", "one")
c2 = Customer.new("customer", "two")
c3 = Customer.new("customer", "three")
c4 = Customer.new("I'm", "four")
c5 = Customer.new("This is", "five")

r1 = Restaurant.new("R1")
r2 = Restaurant.new("R2")
r3 = Restaurant.new("R3")
r4 = Restaurant.new("R4")

rev1 = Review.new(r1, c2, "pretty good", 4 )
rev2 = Review.new(r2, c2, "pretty good", 5 )
rev3 = Review.new(r3, c1, "this joint blows", 1 )
rev4 = Review.new(r4, c3, "pretty good", 4 )
rev5 = Review.new(r1, c4, "meh, ok", 3 )

c1.add_review(r4, "good", 4)
c1.add_review(r4, "good", 4)
c2.add_review(r4, "goooooooooooooooood", 4)
c2.add_review(r4, "lalalalalalalalalalalalalalal", 4)
c2.add_review(r4, "deedeedeedeedee", 4)
c1.add_review(r4, "good", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
