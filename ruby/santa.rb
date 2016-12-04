class Santa

	attr_reader :age,:ethnicity
	attr_accessor :gender  

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender=gender
		@ethnicity=ethnicity
		@age=0
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	end

	def speak
		puts  "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def reindeer(name)
		puts "#{name} has arrived."
	end
	
	def celebrate_birthday
	  @age+=1 
	  p @age
	end
	
	def get_mad_at(name_of_reindeer)
	  @reindeer_ranking.delete(name_of_reindeer)
	  @reindeer_ranking.push(name_of_reindeer)
	end
	
	#setter method 
	def set_gender=(new_gender)
	  @gender=new_gender
	end
	
	#getter method
	def get_age
	  @age
	end
	
	def get_ethnicity
	  @ethnicity
	end
	
end



call_santa=Santa.new("Alien","Green")
call_santa.speak
call_santa.eat_milk_and_cookies("Slime")
call_santa.celebrate_birthday
call_santa.get_mad_at("Vixen")
call_santa.set_gender = "Not Alien"
call_santa.get_ethnicity
call_santa.get_age

#reindeer_ranking.each do |x| 
 # call_santa.speak 
  #call_santa.reindeer(x) 
#end

santas = []
example_genders.length.times do |i|
  santas << Santa.new(@example_genders[i], @example_ethnicities[i])
end