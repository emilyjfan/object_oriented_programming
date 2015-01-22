
class Rover 
	attr_accessor :x, :y, :direction 

	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end 


	def read_instruction 
		instruction = gets.chomp 
		if instruction == "M" 
			move 
		else
			turn(instruction) 
		end
		puts "Your new position is #{self}." 
	end


	def move
		case direction
		when "N"
			@y += 1
		when "S"
			@y -= 1
		when "E"
			@x += 1
		when "W"
			@x -= 1
		else
			puts "Bad direction! No biscuit."
		end
	end

	def turn(turn_direction)

		dirs = ["N", "E", "S", "W"]
		pos = dirs.index(direction)

		case turn_direction
		when "L"
			pos -= 1
		when "R"
			pos += 1
		else
			puts "Type in 'M', 'R' or 'L'."
			return
		end 

		pos = pos % 4

		@direction = dirs[pos]


		# if turn_direction == "R"
		# 	case 
		# 	when direction == "N"
		# 		direction = "E"
		# 	when direction == "E"
		# 		direction = "S"
		# 	when direction == "S"
		# 		direction = "W"
		# 	when direction == "W"
		# 		direction = "N"
		# 	end

		# elsif turn_direction == "L"
		# 	case 
		# 	when direction == "N"
		# 		direction = "W"
		# 	when direction == "S"
		# 		direction = "E"
		# 	when direction == "E"
		# 		direction = "N"
		# 	when direction == "W"
		# 		direction = "S"
		# 	end
		# else
		# 	puts "Type in 'M', 'R' or 'L'."
		# end 

	end


end

rover = Rover.new(0, 0, "N")
puts "Your starting position is #{rover}." 

loop do 
	puts "Enter 'M' to move forward; 'R' to turn right; and 'L' to turn left."
	rover.read_instruction	
end 

