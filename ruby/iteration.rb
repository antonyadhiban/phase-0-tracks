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

 