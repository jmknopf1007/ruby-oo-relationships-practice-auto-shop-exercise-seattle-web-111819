class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.car_owner == self 
    end
  end

  # Get a list of all the mechanics that a specific owner goes to
  # go through car
  # select 

  def mechanics
    cars.map do |car|
      car.mechanic 
    end
  end

  # Get the average amount of cars owned for all owners

  # number of cars that the owner has

  # divide by the number of owners 

  def self.average_car
    # getting number of owned cars (getting rid of nil responses)
    owned_cars = Car.all.select do |car| 
      car.car_owner
    end
    #owned_cars.count 

    # getting rid of car_owners that don't have a car yet 
    car_owners_who_own_car = owned_cars.map do |car|
      car.car_owner
    end

    # getting the actual result (getting the average)
    car_owners_who_own_car.uniq.count.to_f / owned_cars.count  

end





end
