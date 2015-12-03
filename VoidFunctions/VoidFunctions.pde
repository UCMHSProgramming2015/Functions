void setup() {
  size(800, 800);
  background(255, 102, 255);
}

void draw() {
  drawRandomCircle();  //Add circles at random parts of program
  if (mousePressed) {    // If mouse pressed add circles at mouse locaion
    drawCircleAt();
  }
}

void keyPressed() {
  if (keyCode == BACKSPACE) {    //Creates a blank screen
    resetScreen();
  }
  if (keyCode==ESC) {    //Adds a way to close program
    exit();
  }
}

void drawRandomCircle() {    //Define drawing random cirlce function
  noStroke();
  fill(255);
  float sz = random(10, 45);
  ellipse(random(width), random(height), sz, sz);
}

void drawCircleAt() {    //Define a function that draws circles where mouse is located
  fill(150, 102, 255);
  float sz = random(20, 25);
  ellipse(mouseX, mouseY, sz, sz);
}

void resetScreen() {    //Defines funcion that redraws the background
  background(255, 102, 255);
}