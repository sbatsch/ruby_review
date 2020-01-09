
module Moveable 
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


class Vehicle 
  def initialize
    @speed = 0
    @direction = 'north'
  end

class Car < Vehicle
  include Moveable
  def honk_horn
    puts "Beeeeeeep!"
  end
end


class Bike < Vehicle
  include Moveable
  def ring_bell
    puts "Ring ring!"
  end
end

new_bike = Bike.new 
puts new_bike.speed
