void setup() {
  size(800,600);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  drawBlueSquare();
  drawMouseLocationwithD30(color(100,150,200));
  drawRectangle(10,20);
}

void drawBlueSquare() {
  color blue = color(0,0,255);
  fill(blue);
  rect(width/2, height/2,50,50);
}

void drawMouseLocationwithD30(color userColor) {
  fill(userColor);
  ellipse(mouseX,mouseY,30,30);
}

void drawRectangle(int w, int h) {
  fill(255,100,50);
  rect(random(width),random(height),w,h);
}