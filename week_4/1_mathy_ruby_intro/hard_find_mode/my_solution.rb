# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
	# The input is a single array
# What is the output? (i.e. What should the code return?)
	# The input is the mode of the array
# What are the steps needed to solve the problem?
	# The first step is to create a method
	# Next step is to create an inject function within that method.  That inject function creates a new hash to count the number of unique occurrences.
	# The next step is to find the max occurrences of each value
	# The next step is find the highest value of unique occurrences
	# The final step is to return an array that contains that value
	# def mode(array)
		# new_array = array.inject(hash.new(0)) { count occurrences of each item in array}
		# max = new_array.values.max
		# array.find_all { value = max }
		# return array

	# end

# 2. Initial Solution

def mode(array)
    hash_freq = array.inject(Hash.new(0)) { |k, v| k[v] += 1; k}
    max = hash_freq.values.max 
    hash_freq.find_all { | k, v | v == max }.map { |k, v| k }
end




# 3. Refactored Solution

# Remove the separate creation of a variable for max and just put it in one step

def mode(array)
    hash_freq = array.inject(Hash.new(0)) { |k, v| k[v] += 1; k}
    hash_freq.find_all { | k, v | v == hash_freq.values.max }.map { |k, v| k }
end

# 4. Reflection 

=begin
	
This challenge was much harder than the other math challenges.  I initially thought that creating a
hash that counted the occurrences of unique values in an array.  That turned out to be a working strategy, but
actually executing it was more difficult.  I wasn't too familiar with using hashes so ended up needing to 
read a lot online on Stack Overflow, the Ruby documentation, and other sources.  However, I think I learned a lot about
hashes and working with arrays.  I could solve most of my questions by looking online.  
As far as concepts I'm having trouble with, I still feel shaky on working with hashes but feel confident that I can
work out the answers by looking online.  I was trying to understand the concepts using basic documentation instead of finding the actual answer,
which will probably help in the long run.  I enjoyed this challenge because of how difficult it was and how much research I had to do,
	even though it took longer than I planned. 
	
=end