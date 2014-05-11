# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.

# USER STORIES

# As a video game player, I want to be able to create a new car and set it's model and color so I 
# can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow 
# directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly 
# accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and 
# follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed 
# so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can 
# get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and 
# signals.
# As a video game player, I would like to see output reflecting the latest action of my car so 
# I can see a play-by-play of the pizza delivery.


# 2. Pseudocode

# Create Car class
	# Initialize class with model and color
	# Create drive method with one parameter, distance
	# Create view speed method
	# Create turn method with one parameter (right vs left)
	# Create change_speed method to accelerate/decelerate
	# Create method to track speed
		# This should create be tracked in an instance variable
	# Create method to stop
		# This changes speed to 0
	# Each of these methods should puts what they are doing
# End class



# 3. Initial Solution

class Car

	@@distance = 0
	
	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
	end

	# This should be modified to test if the speed variable is numeric 
	def drive(distance)
		if @speed == 0
			puts "Please enter the speed you would like to go in MPH."
			@speed = gets.chomp
			puts "You drove " + distance.to_s + " miles at " + @speed.to_s + " MPH."
		else
			puts "You drove " + distance.to_s + " miles at your current speed."
		end
		@@distance += distance
	end

	# This could be modified to give the user choices, right or left

	def turn(direction)
		puts "You turned " + direction + "."
	end

	def stop
		@speed = 0
		puts "You have stopped. Your speed is now " + @speed.to_s + " MPH."
	end

	def change_speed(new_speed)

		if new_speed.to_i > @speed.to_i
			str = "You accelerated to "
		else
			str = "You decelerated to "
		end

		@speed = new_speed
		puts str + @speed.to_s + " MPH."
	end

	def check_speed
		puts "Your speed is " + @speed.to_s+ " MPH."
	end

	def check_distance
		puts "Your total distance traveled was " + @@distance.to_s + "."
	end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

my_car = Car.new("Tesla", "blue")
my_car.drive(0.25)
my_car.stop
my_car.turn("right")
my_car.drive(1.5)
my_car.check_speed
my_car.change_speed(15)
my_car.drive(0.25)
my_car.stop
my_car.turn("left")
my_car.check_speed
my_car.drive(1.4)
my_car.stop
my_car.check_distance


# 5. Reflection 

# I'm still working on adding some things to this challenge but I enjoyed working on modifying
# the methods to make it more user friendly.  I think conceptually this was pretty simple but 
# actually coding it up was more challenging than I thought it would be, which I imagine will
# emulate many of the coding challenges I'll see in the future.