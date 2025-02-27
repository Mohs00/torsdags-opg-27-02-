
 // 7.a 
  integerList.add(5);
  integerList.add(10);
  integerList.add(20);
  
  stringList.add("Hello");
  stringList.add("Processing");
  stringList.add("World");
  
  booleanList.add(true);
  booleanList.add(false);
  booleanList.add(true);
  
 
  println("Integer List: " + integerList);
  println("String List: " + stringList);
  println("Boolean List: " + booleanList);
  
  // 7.b 
  printStrings(stringList);
  
  // 7.c
  int sum = sumOfIntegers(integerList);
  println("Sum of Integer List: " + sum);
  
  // 7.d 
  float average = averageOfIntegers(integerList);
  println("Average of Integer List: " + average);
}

// 7.b 
void printStrings

(ArrayList<String> stringList) {
  println("Printing Strings:");
  for (String str : stringList) {
    println(str);  // Printer hver streng
  }
}

// 7.c 

int sumOfIntegers(ArrayList<Integer> integerList) {
  int sum = 0;
  for (int num : integerList) {
    sum += num;  
  }
  return sum;  
}

// 7.d 
float averageOfIntegers(ArrayList<Integer> integerList) {
  int sum = 0;
  for (int num : integerList) {
    sum += num;  // Summer alle værdier
  }
  return float(sum) / integerList.size();  
}
