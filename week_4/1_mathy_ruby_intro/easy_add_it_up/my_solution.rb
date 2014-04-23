# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
	# the input is an array
# What is the output? (i.e. What should the code return?)
	# the output is the sum of the array for the first method, and a sentence with all strings in the array for the second method
# What are the steps needed to solve the problem?
	# Create one method that calculates the sum of an array and one method that creates a sentence from an array.
	# The sum method should use a single block to calculate
	# The sentence method will loop through each word in the array and add it onto the sentence.


# 2. Initial Solution

# total method

def total(array)
	return array.inject { |sum, x| sum + x }
end

#sentence maker method

def sentence_maker(array)
	sentence = ""
	i = 0
	while i < array.length do
		if i == 0
			sentence = (array[i].capitalize.to_s + " ")
		elsif i == array.length-1
			sentence = sentence + (array[i].to_s + ".") 
		else
			sentence = sentence + (array[i].to_s + " ")
		end
		i += 1
	end
	return sentence
end



# 3. Refactored Solution

# Remove return from total function because there is an implicit return
def total(array)
	array.inject { |sum, x| sum + x }
end

# Remove creation of sentence variable, since it does not exist prior to the loop it is assumed to be blank
def sentence_maker(array)
	i = 0
	while i < array.length do
		if i == 0
			sentence = (array[i].capitalize.to_s + " ")
		elsif i == array.length-1
			sentence = sentence + (array[i].to_s + ".") 
		else
			sentence = sentence + (array[i].to_s + " ")
		end
		i += 1
	end
	return sentence
end

# 4. Reflection 

=begin
	
This challenge was actually more difficult for me than I thought it would be since it was the "easy" challenge.  
My original strategy is what I stuck with, creating a simple inject function for the total method and looping through
each array member for the sentence_maker method.  I kept running into small issues, such as creating an infinite loop and forgetting small
grammatical things.  However, I noticed that the rspec was very helpful.  I was able to see what the code was actually producting which helped me find 
that I was accidentally capitalizing the entire first word, for example, because I was using array.upcase instead of array.capitalize.  
I want to do the rest of these exercises so I have a more basic grasp of Ruby, it's been a while since I looked at this and my mind is still in JavaScript mode. 
	I don't think I learned any new skills or tricks except for using rspec, and now looking back at the drivers
	from earlier challenges would have new meaning because I could interpret the driver code
	
=end