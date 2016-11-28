def fak_nam
	puts "Please enter your name?"
	name=gets.chomp!
	name.downcase!
	vowels="aeioua"
	arr_vow=vowels.split("")
	consonants="bcdfghjklmnpqrstvwxyzb"
	arr_con=consonants.split("")

	arr=name.split('')
	rnm=arr.map{|x|
	  if x==" "
	    " "
	  elsif vowels.include?(x)
	    vowels[vowels.index(x).next]
	  else
	   consonants[consonants.index(x).next]
	  end
	}
	puts rnm.join("").split(" ").map{|x| x.capitalize}.join(" ")
end

fak_nam