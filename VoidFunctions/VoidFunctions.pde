float x;
float y;
void setup() {
size(600,600);
background(0);
}

void draw() {

DrawABlueSquare();
DrawACircle();
DrawARandomLine();
  
}
void DrawABlueSquare(){
rect(width/2-25,height/2-25,50,50);
fill(0,0,255);
}
void DrawACircle(){
ellipse(mouseX,mouseY,30,30);
}
void DrawARandomLine(){
line(random(0,width), 0, random(0,width), height);
stroke(random(255), random(255), random(255));
strokeWeight(.1);
}