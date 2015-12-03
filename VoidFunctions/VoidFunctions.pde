void setup(){
  size(800,800);
  background(255,102,255);
}

void draw(){
  drawRandomCircle();
}

void drawRandomCircle(){
  noStroke();
  fill(255);
  float sz = random(10,45);
  ellipse(random(width),random(height),sz,sz);
}