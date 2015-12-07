void setup() {
  size(800, 600);
}

void draw() {
drawARectangle();
drawACircleAt();
drawTriangles();
}

void drawARectangle(){
  background(0);
  fill(0, 0, 255);
  rectMode(CENTER);
 rect(width/2, height/2, 50, 50); 
}

float r;
float g;
float b;
void drawACircleAt(){
  r = 100;
  g = 255;
  b = 100;
  fill(r, g, b);
  ellipse(mouseX, mouseY, 30, 30);
}

void drawTriangles(){
  fill(random(255), random(255), random(255));
  triangle(random(width), random(height), random(width), random(height), random(width), random(height));
}