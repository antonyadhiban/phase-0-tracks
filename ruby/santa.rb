class Santa

	attr_reader :age, :gender, :ethnicity, :example_genders, :example_ethnicities
	attr_accessor :reindeer_ranking

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
	  p age
	end
	
	def get_mad_at(name_of_reindeer)
	  @reindeer_ranking.delete(name_of_reindeer)
	  @reindeer_ranking.push(name_of_reindeer)
	end
	
	def set_gender(gender)
	  @gender=gender
	end

end



call_santa=Santa.new("Alien","Green")
call_santa.speak
call_santa.eat_milk_and_cookies("Slime")
call_santa.celebrate_birthday
call_santa.get_mad_at("Vixen")
call_santa.set_gender("Not Alien")
200.times do 
   santa_age=rand(140)
	  santa_ethnicity=call_santa.example_ethnicities[rand(call_santa.example_ethnicities.length)]
	  santa_gender=call_santa.example_genders[rand(call_santa.example_genders.length)]
	  puts "Age : #{santa_age}\nGender : #{santa_gender}\nEthnicity : #{santa_ethnicity}"
end
#reindeer_ranking.each do |x| 
 # call_santa.speak 
  #call_santa.reindeer(x) 
#end