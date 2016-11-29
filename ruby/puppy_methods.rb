class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
  	n.times do puts "Woof!" end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	dog_years=human_years*7
  	puts "#{human_years} human years is #{dog_years} dog years"
  end

  def play_dead
  	puts "Lays on the ground"
  end


end

pup=Puppy.new
pup.fetch("car")
pup.speak(3)
pup.roll_over
pup.dog_years(10)
pup.play_dead
