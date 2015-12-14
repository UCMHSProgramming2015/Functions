int p; //allows mouse ellipses to change color when clicked
int sz; //size of black hole. couldn't figure out how to declare it within the function and still have the black hole expand
float cx; //x of black hole
float cy; //y of black hole

void setup(){
  size(800,600); //canvas
  background(0); //black background
  noStroke(); //no stroke
  blueSquare(); //blue square
}

void draw(){
  noStroke(); //also no stroke
  drawARandomCircle(); //random circle
  if(mousePressed){
    drawACircleAt(mouseX, mouseY);
    p = 255;//when you click the mouse, mouse ellipses have a blue value of 255
  }
  else{
    p = 0; //no clicky, no blue :(
  }
  sz += random(-5,10); //size wobbles around but increases overall
  if(sz >= 800){
    sz = 200; //starts out w/ diameter of 200 when it regenerates
    cx = random(width); //pops up randomly every time it regenerates
    cy = random(height); //same as above line
    background(0); //redraw black background
    blueSquare(); //redraw blue square
  }
  pickAColorAnyColor(mouseX, mouseY, mouseX, mouseY, p); //mouse ellipse function
  emptinessOfTheUniverse(); //black hole function
}
/*****************/
void drawARandomCircle(){
  float d; //declare diameter
  fill(0,random(255),random(255)); //random color
  d = random(5,30); //random diameter
  ellipse(random(width), random(height), d, d); //random x & y
}

void drawACircleAt(int x, int y){
  fill(0, mouseX, mouseY); //mouse ellipse
  ellipse(x, y, 10, 10); //mouse ellipse
}

void blueSquare(){
  noStroke(); //no stroke
  fill(0,0,255); //bright blue
  rectMode(CENTER); //draw rectangle from center
  rect(width/2, height/2, 50, 50); //middle of screen
}

void pickAColorAnyColor(int x, int y, int r, int g, int b){
  fill(r, g, b); //also mouse ellipse? may have done extra code on accident
  ellipse(x, y, 10, 10);
}

void emptinessOfTheUniverse(){
  fill(0); //black
  strokeWeight(5); //stroke of 5
  stroke(200,200,200,100); //weird light gray border
  ellipse(cx, cy, sz, sz); //enables black hole to move between regenerations
}