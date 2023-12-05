=begin
  Add an accessor method to your MyCar class to change and view the color of your car. 
  Then add an accessor method that allows you to view, but not modify, the year of your car.
=end

class MyCar
  attr_accessor :color, :model
  attr_reader :year
  # attr_writer :model

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

  def what_am_i
    puts "I am a #{year}, #{color} #{model}."
  end

end

endeavor = MyCar.new(2008, 'silver', 'mitsubishi endeavor')
endeavor.color = 'red'
endeavor.model = 'lancer'
puts endeavor.year
puts endeavor.color
puts endeavor.model
endeavor.what_am_i
