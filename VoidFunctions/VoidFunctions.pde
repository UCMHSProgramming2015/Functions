void setup() {
  size(800, 600);
}

void draw() {
  drawBlueSquareInCenter();
  drawCircle(30,155,255);
  drawRandomTriangleOnMousePress(random(255),random(255),random(255));
}

void drawBlueSquareInCenter() {
  fill(0, 0, 255);
  rect(width/2 - 25, height/2 - 25, 50, 50);
}

void drawCircle(float r, float g, float b) {
  fill(r,g,b);
  ellipse(mouseX, mouseY, 30, 30);
}

void drawRandomTriangleOnMousePress(float r, float g, float b) {
  fill(r,g,b);
  if (mousePressed){
    triangle(random(795),random(695),random(795),random(695),random(795),random(695));
  }
}