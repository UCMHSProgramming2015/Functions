void setup() {
  size(800, 600);
  
}

void draw() {
  drawATri();
 
  }
  




void drawATri() {
  float d = 30;
  fill(random(0,255),random(0,255),random(0,255));
  triangle(random(0,800), random(0,600), random(0,800), random(0,600), random(0,800), random(0,600));
}