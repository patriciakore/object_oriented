#student and instructor inherit from person class

class Person

	def initialize(name)
		@name=name
	end

	def greeting
        puts "Hi my name is #{@name}"
	end
end


class Student < Person
    
    def initialize(name)
        super(name)
    end

	def learn
		puts "I get it!"
	end

end

class Instructor < Person
    
    def initialize(name)
        super(name)
    end
    
	def teach 
		puts "Everything in Ruby is an Object"
	end
end


my_instructor=Instructor.new("Chris")
my_instructor.greeting
my_instructor.teach

my_student=Student.new("Christina")
my_student.greeting
my_student.learn
# my_student.teach  the method teach doesn't exist in the Student class, hence it cannot be called from an instance of the class


