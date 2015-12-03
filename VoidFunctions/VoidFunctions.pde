void setup(){
  size(800,800);
  background(255,102,255);
}

void draw(){
  drawRandomCircle();    //Add circles at random parts of program
}

void drawRandomCircle(){    //Define drawing random cirlce function
  noStroke();
  fill(255);
  float sz = random(10,45);
  ellipse(random(width),random(height),sz,sz);
}