float x,y,z;


void setup() {
 size(800,600); 
 x=150;
 y=27;
 z=210;
   
}

void draw()  {
  drawrect();
  drawcircle();
  colorchange();
}




void drawrect() {
  fill(0,0,255);
  rectMode (CENTER);
  rect(width/2,height/2,50,50);
}

void drawcircle() {
fill(x,y,z);  
ellipse(mouseX,mouseY,30,30);
}


void colorchange() {
 if(mousePressed) {
   x=x+10;
   y=y+10;
   z=z+10;
 }
  if (x>255) {
    x=1;
  }
  if (y>255) {
    y=1;
  }if (z>255) {
    z=1;
  }
}
 
  