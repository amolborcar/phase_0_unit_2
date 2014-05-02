# U2.W5: Class Warfare, Validate a Credit Card Number

# I worked on this challenge with: Nick Giovacchini.

# 2. Pseudocode

# Input: One 16 digit number (testing if it is a credit card each number)
# Output: True or False depending on the test.
# Steps: Create individual methods for each of the three steps.
# Create a new method to initialize the class. 
# Create a new method to double every other digit in the number. 
# Create a new method to sum all digits which derive from the #double method. 
# Create a new method to determine if total from that method is divisible by 10. 
# return true or false. 

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(credit_number)
    if credit_number.to_s.length != 16
      raise ArgumentError.new("Number must be 16 digits")
    else 
      @credit_number = credit_number
    end
  end
 
  @array = Array.new 
  
  def doubler
    @array = @credit_number.to_s.split("")
    i = 0
    while i < @array.length do 

        if i%2 == 0 
            @array[i] = @array[i].to_i
            @array[i] *= 2
        else
            @array[i] = @array[i]
        end

    	i += 1
    end
    @array = @array.join.split("")
  end
    
    def check_card
      	@array = @array.collect { |x| x.to_i }
      	@diff = @array.inject {|sum, value| sum + value} 
      	if @diff % 10 == 0
        	return true
      	else 
        	return false
    	end
  	end
    

end



# 4. Refactored Solution

class CreditCard

  def initialize(credit_number)
    if credit_number.to_s.length != 16
      raise ArgumentError.new("Number must be 16 digits")
    else 
      @credit_number = credit_number
    end
  end
 
  @array = Array.new 
  
  def check_card

    @array = @credit_number.to_s.split("").collect { |x| x.to_i }

    i = 0

    while i < @array.length do 
        if i%2 == 0 
            @array[i] *= 2
        end
    	i += 1
    end

    @array = @array.join.split("")
    @diff = @array.collect { |x| x.to_i }.inject {|sum, value| sum + value}

    if @diff % 10 == 0
      	return true
    else 
        return false
   	end
  end
    
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# CreditCard class should initialize with a single argument
CreditCard.instance_method(:initialize).arity == 1

# This number should return True

CreditCard.new(4408041234567893).check_card == true

# This number should return False

CreditCard.new(4408041234567892).check_card == false

# 5. Reflection 

# I really enjoyed this challenge and thought it was a good one to pair on.  My only complaint
# about it is that the instructions implied we should create separate methods for each step,
# but when we tried that the rspec did not work.  I realized that we needed to combine the 
# second and third steps into one method to create the necessary variables, based on how our code
# was set up.  However, I enjoyed the problem solving methodology
# we needed to implement and we found more issues with variable types (especially string/integer)
# than I had encountered in previous challenges.  I didn't find it particularly challenging,
# but I did learn a lot about variables and methods that I will keep in mind. 