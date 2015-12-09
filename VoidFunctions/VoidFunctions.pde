void setup(){
  size(600,600);  //size
  background(0); //black background
}
void draw(){
  bSquare();  //draw function bSqaure
  cCircle(200,240,190); //draw function cCircle
  myFunction(100,150,200);  //draw myFunction
}


void bSquare(){  //function bSquare has a blue fill and square in middle of plot
  fill(0,0,255);
  rect((width/2)-50,(width/2)-50,100,100);
}

void cCircle(float x,float y,float z){  //function cCircle that allows you to change fill and draws cirlce size 30
  fill(x,y,z);
  float sz=30;
  ellipse(mouseX,mouseY,sz,sz);
}

void myFunction(int x,int y, int z){   //function that draws triangle and lets yo change the border
  stroke(x,y,z);
  triangle(200,200,250,400, 500,600);
}