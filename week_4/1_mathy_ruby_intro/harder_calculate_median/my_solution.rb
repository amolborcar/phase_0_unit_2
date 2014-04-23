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
	# If array is even numbered, take average of elements in the middle of the array


# 2. Initial Solution

def median(array)
	sorted = array.sort

	# Check if the array has string values by testing the first element

	if sorted[0].is_a?(String)
	med = sorted[(sorted.length/2).floor]
	else

	# Calculate median if there are no string values
		if sorted.length%2 != 0
			med = sorted[(sorted.length/2).floor]
		else
			med = (sorted[sorted.length/2]+sorted[(sorted.length/2)-1])/2.to_f
		end
	end


end

# 3. Refactored Solution

# Remove the test for string elements because the sort command already sorts strings

def median(array)
	sorted = array.sort

	# Calculate median if there are no string values
		if sorted.length%2 != 0
			med = sorted[(sorted.length/2).floor]
		else
			med = (sorted[sorted.length/2]+sorted[(sorted.length/2)-1])/2.to_f
		end

end


# 4. Reflection 

=begin

I found this challenge to be easier than the mode challenge.  My logic for calculating the median
was correct and fairly easy to implement.  I didn't really need to try any new techniques, the only issues
I had were getting the syntax exactly correct.  I feel pretty competent in everything I used in completing
this challenge.	

=end