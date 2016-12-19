# an array containing all the digits
array=[0,1,2,3,4,5,6,7,8,9]

# a hash containing actors as key and movies as values 
hash={"samuel jackson":"pulp fiction","denzel washington":"training day","al pacino":"scarface"}

# print each value inside array
array.each do |each_element| p each_element end

# print each value inside hash
hash.each do |each_key,each_value| p "#{each_key} acted in #{each_value}" end

# print array before changing values
p array
# find next number and store  
array.map! do |each_element| each_element.next end
# print after changing values
p array

# print hash before changing values
p hash
# print saying the actor acted in the movie for all actors 
resulting_array=hash.map do |each_key,each_value| "#{each_key} acted in #{each_value}" end
# print the resulting array after changing values
p resulting_array

# remove all elements less than 5
reject_array=array.reject do |each_element| each_element<5 end

# remove all keys that have length greater than 15
reject_hash=hash.reject do |each_key,each_value| each_key.length>15 end

# a different method that filters all elements less than 5 using an alternate method 
select_array=array.select do |each_element| each_element<5 end

# a different method that filters a data structure where length of key greater than 15
select_hash=hash.select do |each_key,each_value| each_key.length>15 end

# delete elements if element greater than 5 
delete_if_array=array.delete_if do |each_element| each_element>5 end

# a method that will remove items from a array until length of array is less than 3 evaluates to false, then stops
until array.length<3 do 
  array.pop
end
# print array
p array

# a method that will remove items from a hash until length of array is less than 2 evaluates to false, then stops
until hash.length<2 do
  hash.shift
end
#print hash
p hash

 

