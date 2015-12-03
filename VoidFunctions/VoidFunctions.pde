void setup() {
  size(800,600);
}


void draw () {
  drawARandomSquare();//initialize items//
  drawARandomCircle();
  drawARect();
  
}

void drawARandomSquare() {
  fill(0,random(255),random(150,255));//creates te square function//
  float sz=random(50,50);
  rect(width/2, height/2,sz,sz);  //in the center of the canvas
  
}

void drawARandomCircle() {    //creates the circle function//
  fill(30,102,201);
  float radius=random(30,30);
  ellipse(mouseX,mouseY,radius,radius);//follows the mouse
}

void drawARect() {  //creates the rectangle function//
  fill(70,10,150);  
  float l=150;
  float w=50;
  rect(mouseX,height/2,l,w);//moves along the center
}
  