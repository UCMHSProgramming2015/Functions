void setup() {
  size(800, 600);
  
}

void draw() {
  drawACircle();
 
  }
  




void drawACircle() {
  float d = 30;
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(mouseX,mouseY, d, d);
}