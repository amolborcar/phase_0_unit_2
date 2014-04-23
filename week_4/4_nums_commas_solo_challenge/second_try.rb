# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
	# The input is a single integer
# What is the output? (i.e. What should the code return?)
	# The output is the input integer formatted as a string, with commas to denote thousands
# What are the steps needed to solve the problem?
	# Create method that takes one argument
	# The method should convert the argument to a string value
	# The method should determine the number of characters in the string value
	# Starting from the right, the method should create a new string with commas after every third character
	# The method should return that string value

=begin
	
	def comma_separated(int)
		int_string = int.to_s
		num = int_string.count
	end
	
=end




# 2. Initial Solution


def comma_separated(int)
    int_string = int.to_s
    arr = int_string.chars.to_a.reverse
    i = 0
    while i < arr.length do
        if i % 3 == 0 && i > 0
            arr[i]=arr[i]+","
        end
        i += 1
    end
    arr_new = arr.reverse.join
	return arr_new
    
end



# 3. Refactored Solution



# 4. Reflection 