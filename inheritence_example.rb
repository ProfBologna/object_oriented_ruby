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

class Car < Vehicle
  
  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle

  def honk_horn
    puts "Ring Ring!"
  end

end

bike = Bike.new
car = Car.new

bike.honk_horn
car.honk_horn

p bike
bike.turn('North by North-West')
p bike


