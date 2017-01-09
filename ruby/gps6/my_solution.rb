# Virus Predictor

# I worked on this challenge [by myself, with: Ted Ngyuen].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative searches through the library of the existing file.
# require depends on the the current directory.
require_relative 'state_data'

class VirusPredictor

  # sets the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # Calls the methods - predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
  # Applies the prediction formulas to specific population condition
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      print "#{@state} will lose #{(@population * 0.4).floor} people in this outbreak"
    elsif @population_density >= 150
      print "#{@state} will lose #{(@population * 0.3).floor} people in this outbreak"
    elsif @population_density >= 100
     print "#{@state} will lose #{(@population * 0.2).floor} people in this outbreak"
    elsif @population_density >= 50
      print "#{@state} will lose #{(@population * 0.1).floor} people in this outbreak"
    else
      print "#{@state} will lose #{(@population * 0.05).floor} people in this outbreak"
    end
  end

  # predits speed of spread based on specific population.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      puts " and will spread across the state in 0.5 months.\n\n"
    elsif @population_density >= 150
      puts " and will spread across the state in 1.0 months.\n\n"
    elsif @population_density >= 100
      puts " and will spread across the state in 1.5 months.\n\n"
    elsif @population_density >= 50
      puts " and will spread across the state in 2.0 months.\n\n"
    else
      puts " and will spread across the state in 2.5 months.\n\n"
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population_data| 
  each_state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  each_state.virus_effects 
end

#=======================================================================
# Reflection Section

# The colon can only be used when the keys are symbols. The fat rockets can be used in any case.

# The require keyword searches only in the current directory of the code file but require_relative searches down the level of folders from the current folder 

# .each, .each_key, .each.value, .select, .map

# The instance variables can only be accessed inside the class and the parameters are not required since the variables are accessible inside the class.

# The scope of variables and methods.