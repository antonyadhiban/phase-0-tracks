=begin
puts "Release 3 :" 
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts 

puts "Release 4 :"
puts decrypt(encrypt("swordfish"))
puts 
=end

#Create method to encrypt a string
def encrypt(x)
  #create empty array to store resulting elements
  emp=[]
  #split the string into an array
  y=x.split('')
  #create basic string that contains all alphabets in order
  alp="abcdefghijklmnopqrstuvwxyza"
  #loop through each element of the input array
	for i in y do
	  #Use push to put all elements to the empty array
	  #Find the index value of current element and use .next for the next number value and use as index for next value in alp
		emp.push(alp[alp.index(i).next])
	end
	#use join method to convert array to string
	emp.join('')
end

# Decrypt is the reverse process of encrypt
# it consists of similar steps except that the alp string is reversed to get decrypted values
def decrypt(x)
  emp=[]
  y=x.split('')
  alp="abcdefghijklmnopqrstuvwxyza"
  #reverse the alp string here
  alp.reverse!
	for i in y do
		emp.push(alp[alp.index(i).next])
	end
	emp.join('')
end

puts "Release 5:"
#ask agent for choice of operation
puts "Hello Agent 47,\nWelcome to password operations,\n* for encrypting type '1'\n* for decrypting type '2'"
#get agents choice using gets and store it in a variable option
option=gets.chomp!
#use conditional statement to execute required operation
if option=='1' 
puts "Enter the password that you would like to encrypt:"
val=gets.chomp
  puts "The encrypted text is '"+encrypt(val)+"'"
elsif option=='2'
  puts "Enter the password that you would like to decrypt:"
  val=gets.chomp
  puts "The decrypted text is '"+decrypt(val)+"'"
else
  puts "Please enter a valid option"
end
