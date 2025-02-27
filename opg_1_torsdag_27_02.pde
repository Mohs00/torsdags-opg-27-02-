int[] arr = { 28, 230, 9, 310, 72 }; 

void setup() {
  size(400, 400);
  int randomValue = getRandom(); 
  println("Tilfældigt tal fra arrayet: " + randomValue);
}

int getRandom() {
  int index = int(random(arr.length)); 
  return arr[index]; 
}
