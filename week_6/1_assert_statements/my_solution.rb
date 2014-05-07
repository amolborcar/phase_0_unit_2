# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# First the assert method is created
# Next the name variable is created with a value "bettysue"
# Next the method assert runs.  Inside of the brackets is the code block that is run when the code
# encounters the "yield" statement.  So in the first instance, an error will be raised if the variable
# name equals anything except "bettysue".  Because name == "bettysue" in the first run of the method, no
# error is raised and the method returns nil.  The second run produces an error.



# 3. Copy your selected challenge here

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



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Incorrect credit card format!" unless yield
end

# Test format of card number

num_good = 1111111111111111
num_bad = 111111111111111
str_bad = "aaaaaaaaaaaaaaaa"
assert { num_good.to_s.length == 16 }
# This should raise an error
assert { num_bad.to_s.length == 16 }
# This should raise an error
assert { str_bad.to_i == str_bad }

assert { CreditCard.new(4408041234567893).check_card == true } 

# This should raise an error
assert { CreditCard.new(4408041234567892).check_card == true }

# 5. Reflection

# I think assert statements make more sense to me than how we were error testing in previous challenges,
# but I think that learning Rspec is still a logical step to take from here.  I would prefer to learn more about
# Rspec as soon as we start using it instead of being introduced to it and then dealing with, in my
# opinion, more complicated and less intuitive methods for doing the same thing.  That said, I think 
# assert statements are useful and I understand how they can be used effectively.
