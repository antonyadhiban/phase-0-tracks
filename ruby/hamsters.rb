def hamster_program
  puts "What is the hamsters name?"
    hamster_name=gets.chomp
    puts "The hamster's name is #{hamster_name}"
  puts "What is the hamster's volume level from 1-10?"
    hamster_volume=gets.chomp.to_i
    puts "The hamster's volume is #{hamster_volume}"
  puts "What is the hamster's fur color?"
    fur_color=gets.chomp
    puts "The hamster's fur color is #{fur_color}"
  puts "Is this hamster a good candidate for adoption? yes or no"
    adoption_candidate=gets.chomp
    puts "Do I think this hamster a good candidate? #{adoption_candidate}"
  puts "How old is this hamster?"
    hamster_age=gets.chomp.to_i
    puts "This hamster is #{hamster_age}"
end