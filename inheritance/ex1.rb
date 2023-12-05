=begin
Create a superclass called Vehicle for your MyCar class to inherit from.
Move the behavior that isn't specific to the MyCar class to the superclass. 
Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

Then create a new class called MyTruck that inherits from your superclass.
And also has a constant defined that separates it from the MyCar class in some way.
=end

class Vehicle
  attr_accessor :color
  attr_reader :year 
  attr_reader :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons.to_i} miles per gallon of gas."    
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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
  NUMBER_DOORS = 4
end

my_coupe = MyCoupe.new('2020', 'Mustang', 'black')
my_sedan = MySedan.new('2022', 'Honda Civic', 'white')

puts my_coupe
puts my_sedan