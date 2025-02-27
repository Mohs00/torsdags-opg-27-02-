// Opgave 3.a
String[] artists = {"Grandmaster Flash", "Run DMC", "Tupac", "Eminem", "Jay-Z"};

// Opgave 3.c
String[] hits = {"The Message", "Walk This Way", "Changes", "Lose Yourself", "Empire State of Mind"};

void setup() {
  size(400, 400);
  
  // Opgave 3.b og 3.d
  println("Top 5 Rappere og deres største hits:");
  for (int i = 0; i < artists.length; i++) {
    println((i + 1) + ". " + artists[i] + " : \"" + hits[i] + "\"");
  }
}
