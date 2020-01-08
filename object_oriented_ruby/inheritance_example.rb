class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Bike < Vehicle
  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Vehicle
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end
 def honk_horn
    puts "Beeeeeeep!"
 end
end 

car1 = Car.new(
              fuel: "diesel",
              make: "Ford",
              model: "Truck", 
              )

p car1





# Add car specific attributes (instance variables) to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (type, weight, etc.). Use the super method to keep the initialize methods DRY.

