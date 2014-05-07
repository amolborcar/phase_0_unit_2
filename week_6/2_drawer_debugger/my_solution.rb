# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	# def add_item
	# 	@contents << item
	# end

	# Change method to accept one argument
	def add_item(item)
		@contents << item
	end


	def remove_item(item = @contents.pop) #what is `#pop` doing? -- #pop is removing the last item in the drawer
		@contents.delete(item)
	end

	def dump  # what should this method return? -- this method puts a statement but it doesn't change the drawer
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
# Add end to end the class Drawer
end


class Silverware
	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	# Create a method called clean_silverware
	def clean_silverware
		puts "#{type} is clean!"
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))

# Create a variable called fork and modify all places where "fork" is referenced
fork = Silverware.new("fork")

silverware_drawer.add_item(fork)
silverware_drawer.view_contents

# This line is removing the fork prematurely, so I've commented it out
#silverware_drawer.remove_item

silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
removed_fork.eat


#BONUS SECTION
# Changed method name to method created earlier
puts fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Error! Error!" unless yield
end

test_fork = Silverware.new("fork")
my_drawer = Drawer.new
my_drawer.add_item(test_fork)
my_drawer.view_contents

# This should run correctly
assert { my_drawer.contents.length == 1 }

# This should raise an error -- and it does!
# assert { my_drawer.contents.length == 0 }

my_fork = my_drawer.remove_item(test_fork)

# This should run correctly
assert { my_drawer.contents.length == 0 }

# This should run correctly
assert { my_fork.instance_of? Silverware }


# 5. Reflection 

# I liked this challenge because it gave me more practice working on Ruby concepts in the terminal 
# and breaking down the problem into steps I could solve one at a time.  I had to examine each method
# carefully before finally figuring out where the problems were.  This was very effective, as the
# methods on their own were very easy to understand but when something went wrong I needed to understand
# what was happening in the code each step of the way, and figure out what the @contents array contained
# after each method was run.  That is how I approached the problem and it worked well.