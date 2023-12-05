=begin
  Create a class 'Student' with attributes name and grade. 
  Do NOT make the grade getter public, so joe.grade will raise an error. 
  Create a better_grade_than? method, that you can call like so...
    puts "Well done!" if joe.better_grade_than?(bob)
=end

class Student
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  def worse_grade_than?(other_student)
    grade < other_student.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)

puts "Well done!" if joe.better_grade_than?(bob)
puts "Well done!" if bob.better_grade_than?(joe)
puts "Let's improve our study habits." if joe.worse_grade_than?(bob)
puts "Let's improve our study habits." if bob.worse_grade_than?(joe)