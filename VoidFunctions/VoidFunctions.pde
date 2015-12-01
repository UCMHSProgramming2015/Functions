void setup(){
size(800,600);
background(0);
}

void draw(){

  drawBlueSquare();
drawMouseCircle();
}

void drawBlueSquare(){
  float side = random(10,50);
  noStroke();
  fill(0,0,random(100,200));
  rect(width/2,height/2,side,side);
} 

void drawMouseCircle(){
float diam = random(10,30);
noStroke();
setFill();
ellipse(mouseX,mouseY, diam, diam);
}

void setFill(){
  float r; 
  float g; 
  float b;
  float transparency;
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  transparency = random(50,150);
  fill(r, g, b,transparency);
 
}