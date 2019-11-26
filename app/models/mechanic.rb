class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end


def my_cars 
  Car.all.select do |car|
    car.mechanic == self 
  end
end

# Get a list of all the car owners that go to a specific mechanic

def car_owners
  final_cars = my_cars.map do |car|
    car.car_owner
  end
  final_cars.uniq.compact  
end

def owner_name
  car_owners.map do |owner|
    owner.name 
  end
end





end
