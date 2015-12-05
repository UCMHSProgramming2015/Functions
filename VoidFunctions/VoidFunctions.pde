void setup(){
  
  size(500,500);          //set size
  noStroke();     //remove stroke
  
  
  
}




void draw(){
  
 mousecircle(0,255,255);      //use the mousecircle function to draw a green circle at the mouse
blueSquare();     //use the bluesquare function to draw a blue circle at the center
 blackcirclesquare();    //use he blackcirclesquare function to draw black circle and square
 }
  
  





void mousecircle(float r, float g, float b){    //name the function and give it three values that user can define


fill(r,g,b);              //fill the colors with variables to be defined
  ellipse(mouseX,mouseY,30,30);      //draw a circle at the mouse and 30 diameter

}
  
void blueSquare(){    //name the function
rectMode(CENTER);    //change the rectangle mode to center
fill(0,0,255);     //fill blue
rect(width/2,height/2,50,50);   //draw the rectangle 


}
void blackcirclesquare(){    //name the function
fill(0);   //fill black 
rect(random(width),random(height),random(5,50),random(5,50));   //draw random rectangles between the canvas between the size 5 and 50 
ellipse(random(width),random(height),random(5,50),random(5,50));   //draw random circles between the canvas between the size 5 and 50 
if(mousePressed){    //if mouse is pressed set the back ground to white and erase the other things
  background(255); //redraw the background
}
}