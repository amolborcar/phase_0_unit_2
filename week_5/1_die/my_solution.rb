# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: The input is a single number that is the number of sides the die has
# Output: The output is a new class that contains two callable methods
# Steps: 

# Create class Die
# Create initialize method that takes one argument
	# Test if argument is > 0, if not return an Argument Error
# Create a method called sides which returns the number of sides
# Create a method called roll which returns a random number, between 1 and @sides
# End class


# 3. Initial Solution

class Die
    def initialize(sides)
        if sides > 0
            @sides = sides
        else
            raise ArgumentError.new("The die must have at least one side!")
        end
    end
    
    def sides
        return @sides
    end
    
    def roll
        return (1..@sides).to_a.sample
    end
end


# 4. Refactored Solution

# Nothing to refactor I guess, code seems pretty clean
class Die
    def initialize(sides)
        if sides > 0
            @sides = sides
        else
            raise ArgumentError.new("The die must have at least one side!")
        end
    end
    
    def sides
        return @sides
    end
    
    def roll
        # I know there are other ways to do this, not sure if they're faster or simpler
        return (1..@sides).to_a.sample
    end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

# Test to see if the sides method returns the supplied argument

Die.new(6).sides == 6

# Test to see if the roll method returns a random number between 1 and the argument

Die.new(6).sides >= 1 && Die.new(6).sides <= 6

# Test to see if the Die class takes one argument, and passes to the initialize method

Die.instance_method(:initialize).arity == 1


# 5. Reflection 

# I thought this challenge was a good introduction to classes and the background reading was
# very helpful.  I already had experience with new classes from one of last week's challenges,
# so this was mostly review.  It was probably overkill to have the shell of the code written
# out already for us.  I still am having some issues writing driver code, although having it 
# in the spec file did help somewhat.  I guess I'm confused as to what methods and commands we can 
# use in rspec vs. in Ruby code, or if they are even different.  I'm going to do more research on that,
# but overall I feel pretty comfortable with simple classes and object creation.