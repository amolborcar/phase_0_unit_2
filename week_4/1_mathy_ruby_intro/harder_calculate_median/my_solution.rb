# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
	# A single array
# What is the output? (i.e. What should the code return?)
	# The median or middle value of that array
# What are the steps needed to solve the problem?

	# Define method that takes one argument
		# def median(array)
	# Sort array in ascending order using array.sort
	# If array is odd numbered, take element in array that is (array.length/2).floor	
	# If array is even numberd, take average of elements in the middle of the array


# 2. Initial Solution

def median(array)
	sorted = array.sort
	# if array[0].is_a?(String)
	# 	med = array[(array.length/2).floor]
	# else
		if sorted.length%2 != 0
			med = sorted[(sorted.length/2).floor]
		else
			med = (sorted[sorted.length/2]+sorted[(sorted.length/2)-1])/2.to_f
		end
	# else
	# 	# Perform test on unsorted array
	# end


end

# 3. Refactored Solution



# 4. Reflection 