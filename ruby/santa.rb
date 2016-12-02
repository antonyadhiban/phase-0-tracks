class Santa

	def initialize(gender,ethnicity)
		@gender=gender
		@ethnicity=ethnicity
		@age=0
		puts "Initializing Santa instance..."
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

end



call_santa=Santa.new("Alien","Green")
call_santa.speak
call_santa.eat_milk_and_cookies("Slime")

reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

reindeer_ranking.each do |x| 
  call_santa.speak 
  call_santa.reindeer(x) 
end

