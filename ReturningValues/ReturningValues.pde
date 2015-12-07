//declare theta
float theta;

void setup() {
  //set size
  size(500, 500);
}

//definies float c as the hypotenuse of a right triangle with sides a and b
float c(float a, float b) {
  return sqrt(sq(a)+sq(b));
}

void draw() {
  //draw background
  background(0);
  
  //set modes, initial stroke, initial text size
  rectMode(RADIUS);
  noStroke();  
  textSize(15);

  //define theta 
  theta = asin(mouseX/(c(mouseX,width-mouseX)));
  
  pushMatrix();
    translate(width/2,height/2);
    rotate(theta);
    fill(255);
    rect(0,0,c(mouseX,width-mouseX)/2,c(mouseX,width-mouseX)/2);
    fill(0);
    pushMatrix();
      translate(0,20-c(mouseX,width-mouseX)/2);
      rotate(-theta);
      text("c", 0,0);
    popMatrix();
    
    pushMatrix();
      translate(20-c(mouseX,width-mouseX)/2,0);
      rotate(-theta);
      text("c", 0,0);
    popMatrix();
    
    pushMatrix();
      translate(0,c(mouseX,width-mouseX)/2-20);
      rotate(-theta);
      text("c", 0,0);
    popMatrix();
    
    pushMatrix();
      translate(c(mouseX,width-mouseX)/2-20,0);
      rotate(-theta);
      text("c", 0,0);
    popMatrix();

    pushMatrix();
      rotate(-theta);
      textSize(30);
      text("c²", 0,0);
    popMatrix();
  popMatrix();

  //set stroke and draw line to cursor to indicate what controls the values
  stroke(255,0,0);  
  line(mouseX,0,mouseX,mouseY);

  //print values and proof
  println("a = " + mouseX + ", b = " + (width-mouseX) + ", c = " + round(c(mouseX, width-mouseX)) + ". (a + b)² = a² + 2ab + b². c² = (a + b)² - 2ab.");
}