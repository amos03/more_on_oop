
class Person
    require_relative "instructor"
    require_relative "student"
    
attr_reader :name

    def initialize(name)
        @name=name
    end

    def greeting
        puts "Hi, my name is #{@name}."
    end

end

chris = Instructor.new("Chris")
chris.greeting
