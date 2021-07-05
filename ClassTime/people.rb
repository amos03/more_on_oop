class Person
    # require_relative "instructor"
    # require_relative "student"
    
attr_reader :name

    def initialize(name)
        @name=name
    end

    def greeting
        puts "Hi, my name is #{@name}."
    end

end

class Student < Person

    def learn
        puts "I get it!"
    end

end

class Instructor < Person

    def teach
        puts "Everything in Ruby is an object."
    end
    
end

chris = Instructor.new("Chris")
chris.greeting
cristina = Student.new("Cristina")
cristina.greeting
chris.teach
cristina.learn

# cristina.teach 
# leads to "undefined method `teach' for #<Student:0x0000557fd42c2f28 @name="Cristina"> (NoMethodError)"

# chris.learn
# leads to "undefined method `learn' for #<Instructor:0x000055e158236790 @name="Chris"> (NoMethodError)"