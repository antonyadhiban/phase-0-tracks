//create method to find longest phrase in an array

function longest_phrase(phrase){
	var longest_phrase="";
	for (var i = phrase.length - 1; i >= 0; i--) {
		if(phrase[i].length>longest_phrase.length){
			longest_phrase=phrase[i];
		}
	}
	console.log("The longest phrase is "+longest_phrase);	
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

function generate_random_words(number_of_words){
	
	var words_array=[];
	var random_word="";
	var random_word_array=[];
	
  var alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
  for(var i=0;i<number_of_words;i+=1){
    for(var j=0;j<Math.floor(Math.random() * 10) + 1;j+=1){
      random_word_array.push(alphabet[Math.floor(Math.random() * alphabet.length)]);
      random_word=random_word_array.join("");
    }
    random_word_array=[];
    words_array.push(random_word);
  }
  console.log("The array of random words: \n"+words_array);
  return words_array;
}


//check above methods using driver code

longest_phrase(["hello","how are you","I am fine"]);

key_value_match( {name:"antony",age:20} , {name:"antny",age:20} );



longest_phrase(generate_random_words(10));