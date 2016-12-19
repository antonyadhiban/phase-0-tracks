def create_fake_name
  
  spy_name = nil
  hash = {}
  
  while spy_name != "quit" do 

	puts "Please enter your name?"
	spy_name = gets.chomp!
	next if spy_name == "quit"
	spy_name.downcase!
	vowels = "aeioua"
	consonants = "bcdfghjklmnpqrstvwxyzb"


	spy_name_letters = spy_name.split('')
	fake_name_letters = spy_name_letters.map do |each_letter|
	# check for spaces but do not replace them
	  if each_letter == " "
	    " "
	# if the letter is a vowel replace with next vowel
	  elsif vowels.include?(each_letter)
	    vowels[vowels.index(each_letter).next]
	# else replace next constant
	  else
	   consonants[consonants.index(each_letter).next]
	  end
	end

	# join the letter to form a word and store 
	hash[spy_name] = fake_name_letters.join("")
	# split words using space
	hash[spy_name] = hash[spy_name].split(" ")
	# capitalize each word
	hash[spy_name].map! do |each_word| each_word.capitalize end
	# join words using space
	hash[spy_name] = hash[spy_name].join(" ")
	# print hash
	puts hash[spy_name]
	end

# print each original name and its fake equivalent
hash.each do |each_key,each_value| puts "#{each_key} is also known as #{each_value}" end

end

create_fake_name

