float d;
int p;
int c;

void setup(){
  size(800,600);
  background(0);
  noStroke();
  blueSquare();
}

void draw(){
  noStroke();
  drawARandomCircle();
  if(mousePressed){
    drawACircleAt(mouseX, mouseY);
    p = 255;
  }
  else{
    p = 0;
  }
  pickAColorAnyColor(mouseX, mouseY, mouseX, mouseY, p);
  emptinessOfTheUniverse();
  c += random(1,3);
}
/*****************/
void drawARandomCircle(){
  fill(0,random(255),random(255));
  d = random(5,30);
  ellipse(random(width), random(height), d, d);
}

void drawACircleAt(int x, int y){
  fill(0, mouseX, mouseY);
  ellipse(x, y, 10, 10);
}

void blueSquare(){
  noStroke();
  fill(0,0,255);
  rectMode(CENTER);
  rect(width/2, height/2, 50, 50);
}

void pickAColorAnyColor(int x, int y, int r, int g, int b){
  fill(r, g, b);
  ellipse(x, y, 10, 10);
}

void emptinessOfTheUniverse(){
  float sz;
  sz = 250;
  if(c >= 200 && c <= 499){
  sz += 10;
  }
  if(c >= 500){
    c = 0;
    background(0);
    sz = 250;
  }
  fill(0);
  strokeWeight(5);
  stroke(200,200,200,100);
  ellipse(width/4, height/4, sz, sz);
}