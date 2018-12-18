class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    full_name = first_name + last_name
    "#{first_name} #{last_name}"
  end


  def self.find_by_name(name)
    self.all.select { |full_name | full_name =
  end

  def all_names(full_name)
    self.all.select { |customer|  }
  end

  def add_review(restaurant, content, rating)
    Restaurant.new (restaurant, self, content, rating)
  end

  def num_reviews
    Review.all.select. { |rating| rating.customer == self}
    rating.uniq #???
  end

  def restaurants


  end

end #end customer class
