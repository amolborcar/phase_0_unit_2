# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an argument called answer and another called guess, both integers
# Output: returns a symbol based on the guess and a boolean based on the most recent guess
# Steps: 

# Create class
	# Initialize class with the answer
	# Create method for guess that takes one input
		# If guess is higher than answer, return :high
		# If guess is lower than answer, return :low
		# if guess = answer, return :correct
	# Create method called solved? based on last guess
		# If .guess returns :correct, return true.  Else return false
# End class


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end
  
  def guess(guess)
    @guess = guess
  	if @guess > @answer
  		@status = :high
  	elsif @guess < @answer
  		@status = :low
  	else
  		@status = :correct
  	end
        return @status
  end

  def solved?
    if @status == :correct
        return true
    else
        return false
    end
  end
  
end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  # I was hoping there was a way to eliminate the creation of the @status variable, and
  # just pass the return value of the guess method to the solved? method, but I couldn't
  # get it to work
  
  def guess(guess)
    @guess = guess
  	if @guess > @answer
  		@status = :high
  	elsif @guess < @answer
  		@status = :low
  	else
  		@status = :correct
  	end
        return @status
  end

 # Code for solved? method can be made more compact
  def solved?
    return true if @status == :correct
        else return false
  end
  
end



# 1. DRIVER TESTS GO BELOW THIS LINE

firstguess = GuessingGame.new(5)

# Test that a guess below 5 returns :low

firstguess.guess(4) == :low

# Test that a guess equal to 5 returns :correct

firstguess.guess(5) == :correct

# Test that a correct guess returns true

firstguess.solved? == true

# 5. Reflection 

# I thought this challenge was pretty easy once I figured out the logic, and I didn't have much
# problem writing the code.  As I mentioned in the comments, I attempted to write a version that didn't
# require creation of a separate variable, but I couldn't figure out the logic.  I was confused as to how 
# the "alternate method" in the github readme was supposed to be implemented, so I haven't done that yet,
# but I likely will in a separate code to play around with getting input from the user.  Overall, I don't think that
# any of the challenges so far this week have been that challenging and have seemingly tested the same things.
