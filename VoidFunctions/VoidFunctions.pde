void setup() {
  //canvas size
  size(800, 600);
}

void draw() {
  //black background
  background(0);
  //three functions
  blueSquare();
  mouseCircle(100,0,255);
  randomTriangle();
}

//draw blue square at center
void blueSquare() {
  fill(0, 0, 255);
  rect(375, 275, 50, 50);
}

//draw circle at mouse
void mouseCircle(float red, float green, float blue) {
  fill(red, green, blue);
  ellipse(mouseX, mouseY, 30, 30);
}

//draw random triangles when mouse pressed
void randomTriangle() {
  fill(255,255,255);
  if (mousePressed) {
    triangle(random(800), random(600), random(800), random(600), random(800), random(600));
  }
}