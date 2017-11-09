// with side-effect
counter = 0
function increment(){
  counter++;
}
increment();
console.log(counter); // 1

// without side-effect
function pure_increment(counter){
  return counter + 1;
}
new_counter = pure_increment(counter);
console.log(new_counter) // 2
console.log(counter) // 1

