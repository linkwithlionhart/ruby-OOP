# Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.

class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons.to_i} miles per gallon of gas."    
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

end

MyCar.gas_mileage(5.9, 100)