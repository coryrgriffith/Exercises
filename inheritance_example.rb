class Movement

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

class Car < Movement
  
  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Movement

  def ring_bell
    puts "Ring ring!"
  end
end

new_bike = Bike.new
new_car = Car.new
new_bike.accelerate
new_car.accelerate
new_bike.ring_bell
new_car.honk_horn