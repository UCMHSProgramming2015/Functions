void setup(){
  size(800, 600);
  textSize(16);
}

void draw(){
  background(0);
  pythaThm(3, 4);
  println(addEmUp(1, 2, 3));
}

float pythaThm(float a, float b){   //solves the hypotenuse c with a and b. Pythagorean Theorem.
  float c = sqrt(sq(a) + sq(b));  
  text("The hypotenuse of a triangle with the sides " + a + " and " + b + " is " + c + ". ", width/4, height/2);
  return c;  //saves the value back to c 
}

float addEmUp(float a, float b, float c){  //adds all three numbers and returns them 
  float d = a + b + c;
  return d;
}