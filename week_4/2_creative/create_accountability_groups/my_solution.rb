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
	# 4. 


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








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


