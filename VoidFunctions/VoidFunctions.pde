float a, b, c;
PImage asoue;
void setup() {
  size(800, 600);
  a=0;
  b=0;
  c=0;
  asoue = loadImage("asoue.jpg");
}

void draw() {
  background(255);
  drawabluesquare(); 
  drawacircle();
  drawanimage(mouseX,mouseY);
}

void drawabluesquare() {
  fill(0, 0, 255);
  rect(375, 275, 50, 50);
}

void drawacircle() {
  fill(a, b, c);
  ellipse(mouseX, mouseY, 30, 30); 
  if (mousePressed) {
    a=random(255);
    b=random(255);
    c=random(255);
  }
}

void drawanimage(float x, float y) {
  
  image(asoue, x,y);
}