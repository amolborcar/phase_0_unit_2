# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Single array of all student names in cohort
# Output: Multiple arrays, each with 4 students per array
# Steps:
	# 1. Create array with all student names
	# 2. Create a method that takes a single input, an array
	# 3. Create method for randomizing which students are grouped with whom
	# 4. Create method for splitting cohort into groups of 4
	# 5. Split randomized cohort into array
    # 6. Make the method iterate 3 times, for each unit


# 3. Initial Solution

# Create full cohort as an array

cohort = ["Bridgette Salcido", "Matias Meneses", "Ariel Fogel", "RJ Bernaldo", "Jeuel Wilkerson", 
"Amol Borcar", "Andrew Koines", "Kendall Carey", "Kris Shanks", "Alec Ashford", "Amelia Downs",
"Ronald Ishak", "Gregory White", "Danny Glover", "Jeff Kynaston", "Josh Jeong", "Matthew Kuzio",
"Kirstin Jarchow", "Phillip Crawford", "Austin Bourdier", "Ryan Stack", "Scott Jason",
"Sherwood Callaway", "Val Sverdlov", "Sapan Bhuta", "Britney Valkenburg", "Brennon Williams"]


def account(array)
    # Create a loop to run through code three times, one for each unit
    
    x = 1

    while x < 4 do
        puts "Unit " + x.to_s + " Accountability Groups:"
        puts "-------------------"
    
    # Randomnize the order of the cohort
        scramble = array.shuffle
	# Create an array out of each group of 4
	    groups = scramble.each_slice(4).to_a
	# Extract these groups into their own arrays
	    i = 0
        
	    while i < groups.length do
            if i == groups.length-1
                puts groups[i]
                puts "-------------------
                "
            else
		        puts groups[i]
                puts "----"
            end
		    i += 1
	    end
        
        x += 1

    end

end

account(cohort)

# 4. Refactored Solution

def account(array)

    x = 1
    # Removed the loop since I know I need to do this exactly 3 times
    
    3.times do
    # This is just formatting the output and could be removed, but I leave it in for readability    
        puts "Unit " + x.to_s + " Accountability Groups:"
        puts "-------------------"
    
    #Remove unnecessary variable creation
        scramble = array.shuffle
        groups = array.shuffle.each_slice(4).to_a
        i = 0
        
        while i < groups.length do
        # This is just formatting the output and could be removed, but I leave it in for readability
            if i == groups.length-1
                puts groups[i]
                puts "-------------------
                "
            else
                puts groups[i]
                puts "----"
            end
            i += 1

        end

        # Get rid of unnecessary addition of x variable
        x += 1 if x < 3
        # Return the array for the drivers after the last iteration
        return groups if x == 3

    end

end

# 1. DRIVER TESTS GO BELOW THIS LINE

driver_test = account(cohort)

# Test if all cohort members are placed into groups

def count_all (array)
    count = 0
    i = 0
    while i < array.length
        count += array[i].length
        i += 1
    end
    return count
end

count_all(driver_test) == 27

# Test if the groups have 4 members

driver_test[0] == 4

# Test if the method iterates 3 times

# I'm not sure how to write this...

# 5. Reflection 

# I thought this challenge was pretty good, but I had a problem writing the driver code.  I wasn't
# really sure how to write the driver code, as my comments indicate, so some more tutorial or resources
# about that would be good.  I experimented in the homework cheater challenge and found the same problem.
# I also couldn't really find any good information online about it.  Also, the actual scope of the challenge confused me.
# There were recommendations on how to make the challenge more difficult but I wasn't sure how to get started on them.
# Overall the actual challenge itself was pretty simple, but writing the drivers annoyed me.


