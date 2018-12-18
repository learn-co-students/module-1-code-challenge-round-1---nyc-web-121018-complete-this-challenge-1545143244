class Restaurant
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
  end

  def Restaurant.all
    @@all << self
  end

  def Restaurant.find_by_name(name)
    


  end



end
