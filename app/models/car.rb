class Car

  attr_reader :make, :model, :classification 

  attr_accessor :car_owner, :mechanic 

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic) 
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map do |car|
      car.classification 
    end
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification 
    end
  end

end 
