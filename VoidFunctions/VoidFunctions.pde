void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  blueSquare();
  circleAtMouse(true);  //example of boolean version
  addition(525, 600);
}


//blue square drawn in the center with the length of 50
void blueSquare() {
  fill(0, 0, 255);
  rectMode(CENTER);
  rect(width/2, height/2, 50, 50);
}

//circle drawn follows mouse. Needs int inputs
void circleAtMouse(color a, color b, color c) {
  fill(a, b, c);
  ellipse(mouseX, mouseY, 30, 30);
}

//circle drawn follows mouse. Needs true/false statement input
void circleAtMouse(boolean rand) {
  if (rand) {
    fill(random(255), random(255), random(255));
  } else { 
    fill(0);
  }
  ellipse(mouseX, mouseY, 30, 30);
}

//does simple addition for your lazy bones
void addition(int x, int y) {
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text(x + " + " + y + " = " + (x + y), width/2, height/2 + 100);
}