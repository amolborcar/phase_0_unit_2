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
    arr = int_string.chars.to_a.reverse
    i = 0
    while i < arr.length do
        if i % 3 == 0 && i > 0
            arr[i]=arr[i]+","
        end
        i += 1
    end
    str_new = arr.reverse.join
	return str_new
    
end


# 3. Refactored Solution

# Condensed conversion of integer to string

def separate_comma(int)
    arr = int.to_s.chars.to_a.reverse
    i = 0
    while i < arr.length
        if i % 3 == 0 && i > 0
            arr[i]=arr[i]+","
        end
        i += 1
    end
    str_new = arr.reverse.join
	return str_new
end


# 4. Reflection 

=begin
	
This challenge was actually very confusing for me.  I tried one method using #collect
and that appeared to work properly.  When I ran the code in IRB and in a sandbox it appeared to 
have the correct result, but the specs did not agree.  So then I wrote the version I am submitting.
My general process was to google questions about how to break up strings, how to insert characters into strings, etc. 
and then look at the Ruby documentation to learn about the methods that were used in those solutions.  That is how
I stumbled onto the #collect method which I had never used before.  I think this worked pretty well and I learned a lot.  
I wanted to implement one of those methods, and I will continue to research how to fix my errors.  The solution I have above 
isn't really anything new I learned, I just thought about how to iterate within an array and was able to think of this solution
fairly easily.  I feel fairly confident in the code I've already written using #collect, which is why it bugs me that the specs are not
approving of it.  Overall I enjoyed this challenge though, one of the reasons I like coding is the problem solving aspect of it and
I got to experience that more in this challenge than in any others so far.
	
=end