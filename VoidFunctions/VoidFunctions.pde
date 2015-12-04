void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  blueSquare();
  mouseCircles(random(255), random(255), random(255));
  keyText();
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

void keyText(){
  if(keyPressed){
    fill(0);
    text("ayy lmao", random(width), random(height));
  }
}