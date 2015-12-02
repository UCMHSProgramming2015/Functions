
void setup() {
  //your setup code is here
  size(800, 600);
  noStroke();
}

void draw() {
  drawARandomCircle();
  if (mousePressed) {
    drawACircleAt(mouseX, mouseY);
  }
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
