


void setup() {
 size(800,600); 

   
}

void draw()  {
  background(255);
  drawrect();
  drawcircle(100,0,255);
  
}




void drawrect() {
  fill(0,0,255);
  rectMode (CENTER);
  rect(width/2,height/2,50,50);
}

void drawcircle(float red,float green,float blue) {
fill(red,green,blue);  
ellipse(mouseX,mouseY,30,30);
}



 
  