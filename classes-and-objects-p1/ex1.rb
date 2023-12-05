=begin
  Create a class called MyCar. 
  When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. 
  Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
  Create instance methods that allow the car to speed up, brake, and shut the car off.
=end

class MyCar

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

end

endeavor = MyCar.new(2008, 'mitsubishi endeavor', 'silver')
endeavor.accelerate(50)
endeavor.current_speed
endeavor.brake(20)
endeavor.current_speed
endeavor.brake(20)
endeavor.current_speed
endeavor.brake(10)
endeavor.current_speed
endeavor.shutoff