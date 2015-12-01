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
fill(random(0,255), random(0,255), random(0,255),random(90,100));
ellipse(mouseX,mouseY, diam, diam);
}