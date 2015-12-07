void setup(){
  size(800,600);
}

void draw(){
 drawabluesquare(); 
 drawacircle(mouseX,mouseY);
}

void drawabluesquare(){
  fill(0,0,255);
  rect(width/2-25,height/2-25,50,50);
}

void drawacircle(float x,float y){
  setfill();
  ellipse(mouseX,mouseY,30,30);
}
void setfill(){
  fill(random(255),0,255);
}