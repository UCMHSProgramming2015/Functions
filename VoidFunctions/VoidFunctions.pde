void setup() {
  size(800, 600); //size of canvas
}

void draw() {
  background(242, 250, 240); //draws bg with super light green bg
  drawsquare(); //draw square
  drawcircle(random(255), random(255), random(255)); //calls on drawcircle function
}

void drawsquare () { //create function draw rect
  rectMode(CENTER); //draws rect from cneter
  fill(201, 234, 245); // makes rect blue
  rect(width/2, height/2, 50, 50); //draws 50 x 50 square in center of screen
}


void drawcircle(float r, float g, float b) { //create function drwa circle user can define circle
  fill(r, g, b); //can make circle different color with parameters later 
  ellipse(mouseX, mouseY, 30, 30); //creates ellipse where mouse is w/ diameter of 30
}