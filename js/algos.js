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

//check above method using driver code

longest_phrase(["hello","how are you","I am fine"]);