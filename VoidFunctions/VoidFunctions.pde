void setup() {
  size(800, 800);
  background(255, 102, 255);
}

void draw() {
  drawRandomCircle();  //Add circles at random parts of program
  if (mousePressed) {    // If mouse pressed add circles at mouse locaion
    drawCircleAt(105, 0, 200);
  }
  blueSquare();
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
  float sz = 30;
  ellipse(random(width), random(height), sz, sz);
}

void drawCircleAt(int r, int g, int b) {    //Define a function that draws circles where mouse is located
  fill(r, g, b);
  float sz = random(20, 25);
  ellipse(mouseX, mouseY, sz, sz);
}

void resetScreen() {    //Defines funcion that redraws the background
  background(255, 102, 255);
}

void blueSquare() {  //Defines function that draws blue square at location  
  fill(0, 0, 255, 100);
  float sz = 40;
  rect(width/2-sz, height/2-sz, sz, sz);
}