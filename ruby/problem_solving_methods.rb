arr1=[42, 89, 23, 1]

def search_array(arr, y)
  
  position=nil
  count=0
  
   while count<arr.length do 
     if arr[count]==y
       position=count
    end
    count+=1
  end
    
  p position
   end 

def fib(i)
  arr1=[0,1]
  count=2
  while count<i do
    arr1.push(arr1[count-1]+arr1[count-2])
    count+=1 
  end
  puts arr1[count-1]
end

fib(100)