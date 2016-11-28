def hours_slept
  leila = 7 
puts "how many hours did you sleep?"
puts "#{leila}"
yield
end 
hours_slept{puts "and some more."}


def holly_match

  actors = ["angelina jolie","brad pitt","jennifer aniston"]
  roles={"angelina jolie"=>"tomb raider","brad pitt"=>"inglorious bastards","jennifer aniston"=>"friends"}

  puts
  puts "Before .each method call in HASH:"
  puts roles
  
  roles.each{|x,y| y.capitalize!}
  puts
  puts "After .each method call in HASH:"
  puts roles 
  
  puts 
  puts "Before .each method call in ARRAY:"
  puts actors
  
  actors.each{|x| x.capitalize!}
  
  puts
  puts "After .each method call in ARRAY:"
  puts actors
  
  puts
  puts "Before .map method call in HASH:"
  puts roles
  
  roles.map {|x,y| y.concat(".")}
  
  puts
  puts "After .map method call in HASH:"
  puts roles
  
  puts
  puts "Before .map method call in ARRAY:"
  puts actors
  
  actors.map! {|x|"#{x}."}
  
  puts
  puts "after .map call:"
  puts actors
  
  puts
  
  dela=actors.reject{|x| x.length < 14} 
  p dela 
  delh=roles.reject{|x,y| x.length < 14}
  p delh
  puts
  kepa=actors.select{|x| x.length < 14} 
  p kepa
  keph=roles.select{|x,y| x.length < 14}
  p keph
  puts
  
  deli=actors.delete_if{|x| x.length < 15}
  p deli
  
  until actors.length<2 do 
    actors.pop
    end
  p actors
  
end 
holly_match