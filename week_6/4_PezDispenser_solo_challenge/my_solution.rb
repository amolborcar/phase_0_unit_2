# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# Create new class for pez dispenser
# Initialize the class with one argument, an array
# Create method to count the pez in the dispenser
	# Simply count the number of members in the array
# Create method to remove a pez from the dispenser
	# Remove the first pez from the array
# Create method to add a pez to the dispenser
	# Add an item to the end of the array
# Create method to view the contents of the dispenser
	# Puts the array of flavors, in order


# 3. Initial Solution

class PezDispenser
 
# your code here!
	def initialize(flavors)
		@flavors = flavors
	end

	def pez_count
		return @flavors.length
	end

	def get_pez
		@flavors.delete_at(0)
	end

	def add_pez(new_flavor)
		@flavors.push(new_flavor)
	end

	def see_all_pez
		return @flavors
	end
 
end
 


# 4. Refactored Solution
# Removed return statements because returns are implicit

class PezDispenser
 
	def initialize(flavors)
		@flavors = flavors
	end

	# This will make the flavors array accessible from outside the class
	attr_reader :flavors

	def pez_count
		@flavors.length
	end

	def get_pez
		@flavors.delete_at(0)
	end

	def add_pez(new_flavor)
		@flavors.push(new_flavor)
	end

	def see_all_pez
		@flavors
	end
 
end



# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Error!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
assert { super_mario.pez_count == 9 }
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
assert { super_mario.flavors[9] == "purple" }
assert { super_mario.pez_count == 10 }
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts super_mario.see_all_pez
puts "The pez flavor you got is: #{super_mario.get_pez}"
assert { super_mario.pez_count == 9 }
puts "Now you have #{super_mario.pez_count} pez!"


# 5. Reflection 

# I was a little confused by the setup of this exercise, because I assumed that the driver tests
# that I needed to write would be based on my own tests, but I created mine based on the commands
# already written.  Overall though I thought each of the methods I needed to write were very simple
# and I didn't have any issues with this challenge.