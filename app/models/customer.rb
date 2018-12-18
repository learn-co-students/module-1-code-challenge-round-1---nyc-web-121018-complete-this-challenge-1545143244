class Customer
  attr_accessor :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def Customer.all ##########
    @@all << self
  end

def Customer.find_by_name(name) ############
self.full_name.find do |name|
  full_name == name
  end
end

def Customer.all_names ###################
    array = self.all.each do |array|
      array << []
    end
  end
