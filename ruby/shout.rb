=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end

	def self.yelling_happily(words)
		words + "!!!!" + ":)"
	end
end

Shout.yell_angrily("Noooo")
Shout.yelling_happily("Yesss")
=end

module Shout
	def exclamation(words)
		words + "!!!!!"
	end
end

class Yell_angrily
	include Shout
end

class Yelling_happily
	include Shout
end

yell_angrily=Yell_angrily.new 
yell_angrily.exclamation("Noooo")

yelling_happily=Yelling_happily.new 
yelling_happily.exclamation("Yess")