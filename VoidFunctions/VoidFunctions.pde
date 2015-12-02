void setup(){
  
  size(500,500);
  noStroke();
  
  
  
}




void draw(){
  
 mousecircle(0,255,0);
blueSquare();
 blackcirclesquare(); 
 }
  
  





void mousecircle(float x, float y, float z){
fill(x,y,z);
  ellipse(mouseX,mouseY,30,30);

}

void blueSquare(){
rectMode(CENTER);
fill(0,0,255);
rect(width/2,height/2,50,50);


}
void blackcirclesquare(){
fill(0);
rect(random(width),random(height),random(5,50),random(5,50));
ellipse(random(width),random(height),random(5,50),random(5,50));


}