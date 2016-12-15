def des
  has={name:nil,age:nil,children:nil}
	puts "Please enter your name"
	has[:name]=gets.chomp!
	puts "Please enter your age"
	has[:age]=gets.chomp!.to_i
	puts "How many children do you have?"
	has[:children]=gets.chomp!.to_i
	puts "What type of decoration theme do you want?"
	has[:decor_theme]=gets.chomp!
	puts "Do you want to change any information?"
	cha=gets.chomp!
	if cha=="none"
	else
		puts "Enter the changes"
		has[cha.to_sym]=gets.chomp!
	end
	p has

end

des
