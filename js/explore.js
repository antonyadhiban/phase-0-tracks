//create new method and get string as input
function reverse(string_to_reverse){

	//convert string into array
	var split_string = string_to_reverse.split("");
	var new_array=[]
	//starting from the end,
	//take each element of array and push into new array 
	for (var i = split_string.length - 1; i >= 0; i--) {
		new_array.push(split_string[i]);
	}

	//convert new array into a string
	var reversed_string=new_array.join("");

	console.log(reversed_string)
	

}

//done

//Add driver code to check

reverse("antonyadhiban");