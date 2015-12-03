void setup(){
  size(600, 600);
  background(0);
  rectMode(CENTER);
}

void drawBlueSquare(){
  float sz = 50;
  fill(0, 0, 255);
  rect(width/2, height/2, sz, sz);
}

void drawMouseEllipse(color userColor){
  float sz = 30;
  fill(userColor);
  ellipse(mouseX, mouseY, sz, sz);
}

void drawRedTriangle(){
  fill(255, 0, 0);
  triangle(30, 75, 58, 20, 86, 75);
}

void draw(){
  drawBlueSquare();
  drawMouseEllipse(color(30, 150, 90));
  if (mousePressed == true){
    drawRedTriangle();
  }
}