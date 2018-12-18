require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

                  #first_name, last_name
c1 = Customer.new("Bob", "Smith")
c2 = Customer.new("Jane", "Smith")
c3 = Customer.new("Eric", "Ball")
c4 = Customer.new("Lyra", "Quinn")

                    #name
r1 = Restaurant.new("mcs")
r2 = Restaurant.new("bk")
r3 = Restaurant.new("wendys")
r4 = Restaurant.new("arbys")
r5 = Restaurant.new("chickfila")

                #customer, restaurant, content, rating
rv1 = Review.new(c1, r1, "good", 4)
rv2 = Review.new(c2, r2, "bad", 1)
rv3 = Review.new(c2, r3, "decent", 3)
rv4 = Review.new(c3, r1, "great", 4)
rv5 = Review.new(c4, r1, "amazong", 5)
rv6 = Review.new(c4, r4, "okay", 2)
rv7 = Review.new(c4, r5, "horrible", 0)
 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
