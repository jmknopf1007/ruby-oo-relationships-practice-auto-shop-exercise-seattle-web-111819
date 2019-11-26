require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("James")
o2 = CarOwner.new("Jesus")
o3 = CarOwner.new("Bobz")

m1 = Mechanic.new("Fred", "A")
m2 = Mechanic.new("George", "B")
m3 = Mechanic.new("Tanner", "A") 
m4 = Mechanic.new("Giles", "B")  

# def initialize(make, model, classification, car_owner, mechanic)

c1 = Car.new("Honda", "Civic", "A", o1, m1)
c2 = Car.new("Dodge", "Charger", "B", o2, m2)
c3 = Car.new("Land Rover", "Discovery", "A", o3, m3)
c4 = Car.new("Chevy", "Taurus", "A", o1, m3)
c5 = Car.new("Ford", "Explorer", "B", o2, m4) 
c6 = Car.new("Chevy", "Xtrerra", "B", o3, m4)  





binding.pry

puts "Heyyyyy friendddddd"
