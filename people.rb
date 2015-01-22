class Person 
	attr_accessor :name 

	def initialize 
	@name = name 
	end

	def print_name
		"#{@name}"
	end

	def name=(str)
	 	@name = str  
	 end

end

class Student < Person 
	def learn
		"I get it!"
	end
end

class Instructor < Person 
	def teach
	 	"Everything in Ruby is an Object."
	 end 
end

instructor = Person.new 
instructor.name = "Chris"

puts "Hello #{instructor.print_name}."