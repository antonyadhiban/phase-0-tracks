# Create a new method 
def designer
	# Create a hash that has name,age and children as key
    user_info = {name:nil,age:nil,children:nil}
    # Get name of the user as input and store in hash 
	puts "Please enter your name"
	user_info[:name] = gets.chomp!
	# Get age of the user as input and store in hash 
	puts "Please enter your age"
	user_info[:age] = gets.chomp!.to_i
	# Get number of children the user has as input and store in hash 
	puts "How many children do you have?"
	user_info[:children] = gets.chomp!.to_i
	# Get the decor theme as input from user and store inside hash
	puts "What type of decoration theme do you want?"
	user_info[:decor_theme] = gets.chomp!
	# Ask user if any changes are required and store input inside temporary variable
	puts "Do you want to change any information? If no changes are required type 'none'."
	change = gets.chomp!
	
	# Check if user input is none using if condition and if true, print hash
	if change == "none"
		puts user_info
	# Check if change equals any value inside hash and if true, print hash
	elsif change == "name" || "age" || "children" || "decor_theme"
		puts "Enter the changes"
		user_info[change.to_sym] = gets.chomp!
		puts user_info
	# Else if the input does not match, print as invalid entry
	else
		puts "Invalid input"
	end

end

#Call the method
designer