def fake_name
  name=nil
  hash={}
  while name!="quit" do 
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
	hash[name]=rnm.join("").split(" ").map{|x| x.capitalize}.join(" ")
	puts hash[name]
	end
hash.delete("quit")
hash.each{|x,y| puts "#{x} is also known as #{y}"}
end

fake_name