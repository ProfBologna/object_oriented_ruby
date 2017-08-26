 module Vehicles

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


class Car

  include Vehicles

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Beep beep!"
  end

end



class Bike

 include Vehicles

 def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end

end

bike = Bike.new
car = Car.new


p car
p bike