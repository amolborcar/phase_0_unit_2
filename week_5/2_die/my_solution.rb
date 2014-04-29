# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  	if labels.length == 0
  		raise ArgumentError.new("You must have at least one label!")
  	else
      @labels = labels
    end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end




# 4. Refactored Solution

# I don't think there's anything to refactor

class Die
  def initialize(labels)
  	if labels.length == 0
  		raise ArgumentError.new("You must have at least one label!")
  	else
      @labels = labels
    end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

# Die class is initialized with a single argument

Die.instance_method(:initialize).arity.should == 1

# Sides method returns the length of the array

Die.new(["a","b","c","d","e"]).sides == 5

# Roll method returns one of the inputs

die = Die.new(["a","b","c","d","e"])
die.roll == "a" || die.roll == "b" || die.roll == "c" || die.roll == "d" || die.roll == "e"

# 5. Reflection 

# This challenge was very similar to challenge 1 because of how I structured my roll method in 
# the last challenge, so nothing new to report.  I still am having trouble writing driver code and am not entirely
# sure the one I've written here is correct.
