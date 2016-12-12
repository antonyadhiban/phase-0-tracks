//create method to find longest phrase in an array

function longest_phrase(phrase){
	var longest_phrase="";
	for (var i = phrase.length - 1; i >= 0; i--) {
		if(phrase[i].length>longest_phrase.length){
			longest_phrase=phrase[i];
		}
	}
	console.log(longest_phrase);	
}

function key_value_match(object1,object2){
  
  var i=0;
  var result=false;
  
  while(i<Object.keys(object2).length){
    if(object1[Object.keys(object1)[i]]==object2[Object.keys(object2)[i]]){
	    result=true;
	  }  
	else{
	  	result=false;
	  }
	  i+=1;
  }
  return result;
}

//check above methods using driver code

longest_phrase(["hello","how are you","I am fine"]);

key_value_match( {name:"antony",age:20} , {name:"antny",age:20} );