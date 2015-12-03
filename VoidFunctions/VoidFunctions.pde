float a, b, c;
PImage asoue;
void setup() {
  size(800, 600);
  
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
  setfill(40,195,255);
 ellipse(mouseX, mouseY, 30, 30); 
 
  
}

void drawanimage(float x, float y) {
  
  image(asoue, x,y);
}

void setfill(float r, float g, float b){
 fill(r,g,b); 
}