=begin
  Write a method called age that calls a private method to calculate the age of the vehicle. 
  Make sure the private method is not available from outside of the class. 
  You'll need to use Ruby's built-in Time class to help.
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
    puts "#{miles/gallons} miles per gallon of gas."    
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

  def age
    puts "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i # solves for no-coercion
  end

end

class MyCoupe < Vehicle
  NUMBER_DOORS = 2
end

class MySedan < Vehicle
  include Stowable
  NUMBER_DOORS = 4
end

civic = MySedan.new('2020', 'Honda Civic', 'silver')
civic.age