puts "How many employees needs to be processed?"
j=gets.chomp!.to_i


def process
  allergies=""
  puts "What is your name?"
  name=gets.chomp!
  puts "How old are you?What year were you born"
  age=gets.chomp!.to_i
  year=gets.chomp!.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  order=gets.chomp!
  puts "Would you like to enroll in the company’s health insurance?"
  enroll=gets.chomp!
  puts "Do you have any allergies?"
  while allergies!="done" do
  	allergies=gets.chomp!
  	if allergies=="sunshine"
  		result="Probably a vampire."
  		return puts result
  	end
  end
  
  if name=="Drake Cula"||name=="Tu Fang"
  	result="Definitely a vampire."
  elsif age<=100&&order=="yes"&&enroll=="yes"
  	result="Probably not a vampire."
  elsif age>100&&order=="no"&&enroll=="yes"
  	result="Probably a vampire."
  elsif age>100&&order=="no"&&enroll=="no"
  	result="Almost certainly a vampire."
  else
  	result="Results inconclusive"
  end
  puts result
end

j.times do process() end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."