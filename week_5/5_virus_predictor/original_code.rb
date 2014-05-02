# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# This code appears to predict how many people in each state will be lost in the virus
# outbreak and how long it will take that to happen, based on the population density of the state.

# EXPLANATION OF require_relative
# The require statement loads a file once.  The require_relative statement builds on that by
# eliminating the need for a full file path and extension.  In other words, require_relative
# loads a file that is of the same type and in the same folder as the program you are working in. 

require_relative 'state_data'

# The STATE_DATA hash is composed of one hash for each state.  In the STATE_DATA hash, the key is the state name
# and the value is the resulting sub-hash.  Each sub-hash has a key for population_density, 
# population, region, and regional_spread.  Those keys are stored as symbols, not strings.

class VirusPredictor

  # Initialize the class and create instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This is a public method that calls the predicted_deaths and speed_of_spread private methods,
  # the way this is currently set up.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # This is denoting that all the methods below it are private methods to this class, meaning they cannot
  # be called on an instance of the class.  If it was put above the virus_effects method, then that
  # method would also become private and not callable from outside the class. 

  # This method calculates number_of_deaths based on the value of population density, 
  # then prints the result. 
  def predicted_deaths(population_density, population, state)
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else 
    #   number_of_deaths = (@population * 0.05).floor
    # end
    case @population_density
    when 0..50
      number_of_deaths = (@population * 0.05).floor
    when 50..100
      number_of_deaths = (@population * 0.1).floor
    when 100.150
      number_of_deaths = (@population * 0.2).floor
    when 150..200
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method calculates the speed of the spread (in months) based on the population density, 
  # then prints the result.
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else 
    #   speed += 2.5
    # end
    case @population_density
      when 0..50
        speed += 2.5
      when 50..100
        speed += 2
      when 100..150
        speed += 1.5
      when 150..200
        speed += 1
      else
        speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

STATE_DATA.each { |key, value|
  key = VirusPredictor.new(key, value[:population_density], value[:population])
  key.virus_effects
}

# Playing around with working with hash in hash

# STATE_DATA.each { |key, value| 
#   puts key
#   value.each { |key, value| print value if key=:population }
#  }
# puts STATE_DATA["Alabama"][:region]

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
=end

# REFACTORING

# I removed the region and regional_spread input variables, since they were not used anywhere in any of the methods
# I changed the if/elsif/end statements in the predicted_deaths and speed_of_spread methods to case statements

# Reflection

# I enjoyed this challenge because it introduced working with hashes within hashes, as well
# as having different types of variables within the hashes.  I didn't realize that the data
# for each state in the STATE_DATA hash was stored as symbols, which threw me for a bit.  I also
#   enjoyed the practice I got working with enumerator methods, and I got more practice working
#   in the terminal since the require statement meant I couldn't do this challenge easily in a sandbox
#   like repl.it. I thought this was fairly challenging and needed to consult the ruby docs and other
#   web resources several times before I correctly wrote my code to call the virus_effects method for each state.