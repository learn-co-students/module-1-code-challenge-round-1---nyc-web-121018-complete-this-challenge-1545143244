require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#customer (first_name, last_name)
c1 = Customer.new("john", "johnson")
c2 = Customer.new("will", "williamson")
c3 = Customer.new("olaf", "olafson")
c4 = Customer.new("greg", "gregson")
c5 = Customer.new("john", "samson")
c6 = Customer.new("olga", "olegsdauter")

#Restaurant (name)

r1 = Restaurant.new("Restaurant 1")
r2 = Restaurant.new("Restaurant 2")
r3 = Restaurant.new("Restaurant 3")
r4 = Restaurant.new("Restaurant 4")
r5 = Restaurant.new("Restaurant 5")
r6 = Restaurant.new("Restaurant 6")



#review (customer, restaurant, rating, content)

rev1 = Review.new(c1,r1,10,"It was bloody fantastic")
rev2 = Review.new(c2,r1,1,"It was terrible")
rev3 = Review.new(c3,r1,3,"It was ok")
rev4 = Review.new(c4,r4,4,"It was bloody fantastic")
rev5 = Review.new(c5,r5,4,"It was bloody fantastic")
rev6 = Review.new(c1,r6,1,"It was terrible")














binding.pry
0 #leave this here to ensure binding.pry isn't the last line
