class Restaurant
  attr_accessor :name, :review

  @@all = []

  def initialize(name, review)
    @name = name
    @review = review
    @@all << self
  end


  def self.all
    @@all
  end



  def customers
    Review.all.select
  end

def find_by_name(name)
  self.all.find { |first_rest| first_rest.name == name }
end

end
