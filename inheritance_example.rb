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
  
  attr_reader :fuel, :make, :model
  attr_writer :fuel

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

class Bike < Vehicle

  def initialize(input_options)
    super()
    @gears = input_options[:gears]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

new_bike = Bike.new(gears: "21", type: "Mountain", weight: 20)
new_car = Car.new(fuel: "full", make: "Ford", model: "Escape")
# new_bike.accelerate
# new_car.accelerate
# new_bike.ring_bell
# new_car.honk_horn

