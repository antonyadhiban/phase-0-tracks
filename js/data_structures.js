
var colors = ['blue', 'green', 'yellow', 'black'];
var horse_names = ['ed', 'george', 'bob', 'precious'];
var horses=[];


colors.push('red');
console.log(colors);

horse_names.push('tim');
console.log(horse_names);

for (var i = 0; i < colors.length; i++) {
  horses[horse_names[i]] = colors[i];        
}

console.log(horses);

function car(color, brand){
  
  this.wheels=4
  this.color=color
  this.brand=brand
  
  this.horn=function() {console.log("Pom Pom")}
}
  
var car1 = new car('blue', 'mercedes');
car1.horn();

var car2 = new car('orange', 'volvo');
console.log(car2.color); 