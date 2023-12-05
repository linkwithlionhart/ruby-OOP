=begin
  Given the following code:
    bob = Person.new
    bob.hi
  And the corresponding error message:
    NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
    from (irb):8
    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
=end

class Person
  
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

  def public_hi
    puts "hi!"
  end

  protected

  def grade
    @grade
  end

  private

  def hi
    puts "hi!"
  end

end

bob = Person.new("Bob", 84)
# bob.hi
bob.public_hi