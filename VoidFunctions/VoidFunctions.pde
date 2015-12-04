void setup() {
  //your setup code is here
  size(1600, 1200);
}

void draw() {
  blueSquare();
  circleAtMouse(255, 200, 5);
  for (int i = 0; i < height; i += 20) {
    drawACircleAt(mouseX, i, 15);
  }
}
void drawACircleAt(float x, float y, float d) {
  ellipse(x, y, d, d);
}

void circleAtMouse(float red, float green, float blue) {
  fill(red, green, blue);
  ellipse(mouseX, mouseY, 100, 100);
}

void blueSquare() {
  fill(0, 100, 255);
  rect(width/2, height/2, 100, 100);
}


































void drawARandomCircle() {
  float sz = random(5, 50);
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), sz, sz);
}

void drawACircleAt(float x, float y) {
  fill(255);
  ellipse(x, y, 50, 50);
}