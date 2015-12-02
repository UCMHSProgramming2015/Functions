void setup() {
  size(800,600);
}

void draw() {
  background(0);
  blueSquare();
  mouseCircle();
}

void blueSquare() {
  fill(0,0,255);
  rect(375,275,50,50);
}

void mouseCircle() {
  fill(
  ellipse(mouseX,mouseY,30,30);
}