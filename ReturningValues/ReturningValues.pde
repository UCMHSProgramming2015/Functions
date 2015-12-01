void setup() {
  size(800, 600);
  
}

void draw() {
  drawARect();
  
  }



void drawARect() {
  float sz = 50;
  fill(0, 0, 255);
  rect(width/2, height/2, sz, sz);
}