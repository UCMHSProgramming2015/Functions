void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  blueSquare();
  mouseCircles(random(255), random(255), random(255));
}

void blueSquare(){
  rectMode(CENTER);
  fill(0,0,255);
  rect(width/2,height/2,50,50);
}

void mouseCircles(float r, float g, float b) {
  if (mousePressed) {
    fill(r, g, b);
    ellipse(mouseX, mouseY, 30, 30);
  }
}