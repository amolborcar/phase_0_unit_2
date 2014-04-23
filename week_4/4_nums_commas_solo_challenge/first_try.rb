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
		reverse = int_string.reverse
		arr = reverse.split(3).collect { |x| x.to_s + "," }
		return arr.reverse.join
	end
	
=end




# 2. Initial Solution


def separate_comma(int)
    int_string = int.to_s
    #array = int_string.each_slice(3) { |x| p x }
    if int_string.length > 2 
    	# this line reverses the string, puts all characters into an array, separates the array into 3 character chunks, then puts a comma after every chunk, 
    	# then joins all characters in the array and re-reverses it
        str = int_string.chars.to_a.reverse.each_slice(3).collect { |x| x.to_s + "," }.join.reverse
        # this line removes the comma as the first character of the new string
        str = str[1..str.length-1]
    else
        str = int_string
    end
    return str
end




# 3. Refactored Solution



# 4. Reflection 