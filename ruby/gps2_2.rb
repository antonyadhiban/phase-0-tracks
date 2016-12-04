# Method to create a list	
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(item_string)  
	# steps: 
	# Create a new hash
	@grocery_list=Hash.new
	# Seperate each item in the input string by spaces
	list=item_string.split(" ")
	# set default quantity as length of the hash
	list.each do |x| @grocery_list[x]=1  end
	# print the list to the console [can you use one of your other methods here?]
	p @grocery_list
# output: a hash containing the list of items.
end

# Method to add an item to a list
# input: name of the list, item name and optional quantity
def add_to_list(list, item, quantity)
# steps: set itemname as key and optional quantity as value
	list[item] = quantity
# output: hash containing the added item
	p list
end

# Method to remove an item from the list
# input: name of the list and itemname
def remove_from_list(list, item)
# steps: delete the item from the hash using the given input
	list.delete(item)
# output: hash with the item removed
	list
end

# Method to update the quantity of an item
# input: name of the list, item name and new quantity
def update_item_quantity(list, item, quantity)
# steps: replace the old quantity with the new quantity given in the input
	list[item] = quantity
# output: hash with updated vlues for given item
	list
end

# Method to print a list and make it look pretty
# input: name of the list
def print_list(list)
	puts "Grocery shopping list :"
# steps: loop through each item in the list and print each item
	@grocery_list.each do |item,quantity| puts "* #{item} - #{quantity} " end
# output: each items name and quantity for each item on the list
end
 
create_list("")
add_to_list(@grocery_list, "Lemonade", 2)
add_to_list(@grocery_list, "Tomatoes", 3)
add_to_list(@grocery_list, "Onions", 2)
add_to_list(@grocery_list, "Ice Cream", 4)
remove_from_list(@grocery_list, "Lemonade")
update_item_quantity(@grocery_list, "Ice Cream",1)
print_list(@grocery_list)    
  
    
   






  
 



 
  


 





