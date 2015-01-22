
class Rover 
	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end 

	def to_s
		"(#{@x}, #{@y}, #{@direction})"
	end

	def read_instruction 
		instruction = gets.chomp 

		if instruction == "M" 
			move 
		elsif instruction == "R" || "L"
			turn(instruction) 
		else 
			puts "Type in 'M', 'R' or 'L'."
		end
	end


	def move(units)
		
		read_instruction
	end

	def turn(direction)
		
		read_instruction	
	end


end

rover = Rover.new(1, 2, "N")
puts rover.to_s 

puts "Enter 'M' to move forward; 'R' to turn right; and 'L' to turn left."

rover.read_instruction	

