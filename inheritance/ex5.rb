=begin
  Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. 
  Make sure that all of your previous method calls are working when you are finished.
=end

module Stowable
  def can_stow?(bikes)
    bikes <= 4
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "This factory has created #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons.to_i} miles per gallon of gas."    
  end

  def current_speed
    puts "You are moving at #{@current_speed} km/hr."
  end

  def accelerate(number)
    @current_speed += number
    puts "You hit the gas and accelerate by #{number} km/hr!"
  end

  def brake(number)
    @current_speed -= number
    puts "You press the brakes and decelerate by #{number} km/hr."
  end

  def shutoff
    @current_speed = 0
    puts "If slow is steady, then your stop is ready."
  end

  def spray_paint(new_color)
    color = new_color
    puts "Thank you for waiting. Your #{model} is now #{color}. It was previously #{@color}."
  end

  def what_am_i
    puts "This car is a #{year}, #{color} #{model}."
  end

  def to_s
    "My vehicle is a #{color}, #{year}, #{model}!"
  end

end

class MyCoupe < Vehicle
  NUMBER_DOORS = 2
end

class MySedan < Vehicle
  include Stowable
  NUMBER_DOORS = 4
end

civic = MySedan.new('2022', 'Honda Civic', 'silver')
civic.accelerate(50)
civic.current_speed
civic.brake(20)
civic.current_speed
civic.brake(20)
civic.current_speed
civic.brake(10)
civic.current_speed
civic.shutoff
MySedan.gas_mileage(2.9, 100)
civic.spray_paint('red')
puts civic
puts MyCoupe.ancestors
puts MySedan.ancestors
puts Vehicle.ancestors