void setup() {
  size(400, 400);
  int randomValue = getRandom(); 
  println("Tilfældigt tal fra arrayet: " + randomValue);
  
 
  printPartOfWord("København", 0, 3);
  printPartOfWord("Programmering", 7, 11);
  printPartOfWord("Hello", -1, 3); 
  printPartOfWord("Hello", 3, 1);  
  printPartOfWord("Processing", 6, 10); 
}

int getRandom() {
  int index = int(random(arr.length)); 
  return arr[index]; 
}

void printPartOfWord(String word, int start, int end) {
  if (start < 0 || end > word.length() || start > end) {
    println("Ugyldige indeksværdier. Prøv igen med gyldige værdier.");
    return;
  }
  println(word.substring(start, end));
}
