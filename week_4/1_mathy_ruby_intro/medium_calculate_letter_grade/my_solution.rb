# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
	# The input is an array
# What is the output? (i.e. What should the code return?)
	# The output is a letter grade based on the value of each member of the array
# What are the steps needed to solve the problem?
	# The first step is to define a method.  
	# The next step is to loop through the array.  For each item in the array...
	# Create an if/then/else tree to assign the correct grade.
	# The last step is to return that grade.

#define method taking one array
	# Create while loop while value < array length.  For each value in the array...
		# if score between range, then grade = ?
		# else (repeat)
		# return grade	


# 2. Initial Solution

def get_grade(array)
	i = 0
	while i < array.length do 

		if array[i] >= 90
			grade = "A"
		elsif array[i] >= 80
			grade = "B"
		elsif array[i] >= 70
			grade = "C"
		elsif array[i] >= 60
			grade = "D"
		else grade = "F"
		end
		return grade
		i += 1
	end
end


# 3. Refactored Solution

# Create switch/case statement instead of if/then/else

def get_grade(array)
	i = 0
	while i < array.length do 
		case array[i]
			when 90..100
				return "A"
			when 80..89
				return "B"
			when 70..79
				return "C"
			when 60..69
				return "D"
			else
				return "F"
		end
		return grade
		i += 1
	end
end

# 4. Reflection 

=begin
	
I felt that this challenge was significantly easier than the easy_add_it_up challenge, but that is probably
because I remembered the ruby syntax and have done this grade challenge in various forms before.
I thought the rspec wasn't as useful in this exercise, because once I fixed one test, all the others were fixed as well since they were all mostly the same.
Overall I think I just need more practice with Ruby,  I didn't really have problems with this challenege.
	
=end