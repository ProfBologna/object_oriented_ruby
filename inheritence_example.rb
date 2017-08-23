class Vehicle

  def initialize(input_options)
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

  def initialize(input_options)
    super
    @mileage = input_options[:mileage]
    @make = input_options[:make]
    @model = input_options[:model]
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initalize(input_options)
    super
    @speed = input_options[:speed]
    @weight = input_options[:weight]
    @type = input_options[:type]
  end

  def honk_horn
    puts "Ring Ring!"
  end

end

bike = Bike.new({speed: 10000, make: "Nissan", model: "Sentra"})
car = Car.new({speed: 10, weight: 5, type: "Mountain"})

bike.honk_horn
car.honk_horn

p bike
bike.turn('North by North-West')
p bike


