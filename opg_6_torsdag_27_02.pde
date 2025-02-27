// Opgave 4.a: Start sketch og tilføj en setup funktion
Circle[] circles = new Circle[10]; // Opgave 4.b: Globalt array til 10 cirkler

void setup() {
  size(600, 400); // Opgave 4.a: Sætter størrelsen på canvas
  
  // Opgave 4.i: Opret 10 Circle objekter med forskellige positioner
  for (int i = 0; i < circles.length; i++) {
    float x = i * 50 + 50; // Unik x-position for hver cirkel
    float y = height / 2; // Placeret på midten af skærmen
    circles[i] = new Circle(x, y); // Opgave 4.j: Tilføjer cirkler til arrayet
  }
}

void draw() {
  background(255); // Rydder skærmen ved hver frame
  
  // Opgave 4.l: Bevæger og viser alle cirklerne
  for (Circle c : circles) {
    c.move(1, 0); // Flytter cirklerne mod højre
    c.display(); // Viser cirklerne på skærmen
  }
}

// Opgave 4.c: Definerer Circle klassen
class Circle {
  float xposition, yposition;
  
  // Opgave 4.d: Constructor til Circle klassen
  Circle(float x, float y) {
    this.xposition = x;
    this.yposition = y;
  }
  
  // Opgave 4.f: Metode til at tegne en cirkel på positionen
  void display() {
    ellipse(xposition, yposition, 20, 20);
  }
  
  // Opgave 4.k: Metode til at flytte cirklen
  void move(float x, float y) {
    xposition += x;
// Opgave 6a
int board[][] = new int[8][8];  // 8 rækker og 8 kolonner

// Opgave 6b

 void setup () {
  size(320, 320);  // Skaber et vindue på 320x320 pixels
  
  for (int x = 0; x < 8; x++) {  // Ydre loop for rækker
    for (int y = 0; y < 8; y++) {  // Indre loop for kolonner
      if ((x + y) % 2 == 0) {
        board[x][y] = 0;  // Hvis summen af x og y er lige, så sæt 0
      } else {
        board[x][y] = 1;  // Hvis summen af x og y er ulige, så sæt 1
      }
    }
  }
}

// opgave 6c

void setup() {
  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      // Tegn firkanter for hver værdi i arrayet
      if (board[x][y] == 0) {
        fill(0);  // Sort firkant for 0
      } else {
        fill(255);  // Hvid firkant for 1
      }
      
      // Tegn et rektangel for hver celle i boardet
      rect(x * 40, y * 40, 40, 40);  // 40x40 pixel rektangler
    }
  }
}


// Opgave 6d


int board[][] = new int[8][8];  
int sideLength = 40;  

void setup() {
  size(320, 320);  
  

  for (int x = 0; x < 8; x++) {  
    for (int y = 0; y < 8; y++) {  
   
      if ((x + y) % 2 == 0) {
        board[x][y] = 0;  
      } else {
        board[x][y] = 1;  
      }
    }
  }
}

void draw() {

  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
     
      if (board[x][y] == 0) {
        fill(0);  // Sort firkant for 0
      } else {
        fill(255);  // Hvid firkant for 1
      }
      
    
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
