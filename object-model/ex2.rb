# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

module Learn
  def learn(topic)
    puts "I learned about #{topic}!"
  end
end

class Subject
  include Learn
end

class Course
  include Learn
end

react = Subject.new
ruby = Course.new

react.learn("components")
ruby.learn("object oriented programming")

# Example Solution
module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new