# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

# Input: The input should be a title, a topic, an important date, and a thesis statement.  
# Output: The inputs will go into a template paragraph and the paragraph with the inputs will print to the screen. 
# Steps:

# Create template paragraph.
# Plug the inputs into the template.
# Output the paragraph.


# 3. Initial Solution

class Essay
   
    def initialize (topic, date, gender, thesis)
        @topic = topic
        @date = date
        if gender == "male"
            @pronoun = "he"
            @possessive = "his"
        elsif gender == "female"
            @pronoun = "she"
            @possessive = "her"
        elsif gender == "none"
            @pronoun = "it"
            @possessive = "its"
        end
        @thesis = thesis
        
    end
    
    def write_essay
        puts @topic + " changed the world."
        puts ""
        puts "I've decided to write my essay about " + @topic + 
        ".  " + @topic + " had a huge impact on our society. " +
        @possessive.capitalize + " greatest achievement was " + @pronoun + " " + @thesis + 
        ". This occurred in " + @date.to_s +  ". " + 
        @pronoun.capitalize + " had a huge impact on our world and we still see " + 
        @possessive + " legacy today."
        puts ""
    end
   
end

disney = Essay.new("Walt Disney", 1939, "male", "created modern animation")
industrialization = Essay.new ("Industrialization", 1800, "none", "revolutionized industry in America")
steam_engine = Essay.new("The steam engine", 1606, "none", "led the way for all future technologies")
disney.write_essay
industrialization.write_essay
steam_engine.write_essay

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


