# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
	# The input is an integer and a string.  The method will be called on an existing array
# What is the output? (i.e. What should the code return?)
	# The output is a new array that modifies the existing array, either replacing or not, 
	# based on the inputs
# What are the steps needed to solve the problem?
=begin
	def pad (int, str="")
		if self.length < int
			until i = self.length-1
				self.push(str)
				i += 1
			end
		end
	end

=end



# 2. Initial Solution

# Destructive method
class Array
    def pad!(int, str=nil)
    	num = int-self.length
    	if num > 0
        	num.times { self.push(str) }
    	end
    	return self
	end


# Non-destructive method

    def pad(int, str=nil)
    	num = int-self.length
        if num > 0
            new_arr = self + Array.new(num, str)
        else
            new_arr = self + Array.new()
        end

    	return new_arr
	end
end


# 3. Refactored Solution

# The creation of the num variable is unnecessary and can be removed

class Array
    def pad!(int, str=nil)
    	if (int-self.length) > 0
        	(int-self.length).times { self.push(str) }
    	end
    	return self
	end


# Non-destructive method

    def pad(int, str=nil)
        if (int-self.length) > 0
            new_arr = self + Array.new((int-self.length), str)
        else
        	# I think the Array.new() here is unnecessary but I'm not sure how to remove it
        	# without making the method destructive
            new_arr = self + Array.new()
        end

    	return new_arr
	end
end


# 4. Reflection 

=begin
	
	Overall, I think the logic of my strategy was correct.  Calculate the number of times that the 
	string needed to be added on to the end of the array, then do it.  However, I didn't realize that the
	#push method was automatically destructive, so I needed to change the non-destructive method to account for that.
	I had expected the destructive method to be much more difficult, but it turned out it was pretty simple.  I feel I 
	learned a lot about destructive and non-destructive methods and how they actually function.  I understood the concepts before,
	but now I have a better grasp of how methods actually operate when they are called on an object.  I had a lot of trouble
	making my non-destructive method work correctly because self kept being modified without my realizing it.  I finally figured out
	a way to create and return an entirely new array while leaving the original untouched, and I enjoyed reasoning out why it wasn't working
	on my first few attempts.

=end