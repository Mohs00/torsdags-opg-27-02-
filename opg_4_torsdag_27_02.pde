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
    yposition += y;
  }
}

// Opgave 4.m: Definerer en ny klasse Square
Square[] squares = new Square[10]; // Array til firkanter

void setupSquares() {
  for (int i = 0; i < squares.length; i++) {
    float x = i * 50 + 50;
    float y = height / 2 + 50;
    squares[i] = new Square(x, y);
  }
}

void drawSquares() {
  for (Square s : squares) {
    s.move(1, 0);
    s.display();
  }
}

class Square {
  float xposition, yposition;
  
  Square(float x, float y) {
    this.xposition = x;
    this.yposition = y;
  }
  
  void display() {
    rect(xposition, yposition, 20, 20);
  }
  
  void move(float x, float y) {
    xposition += x;
    yposition += y;
  }
}
