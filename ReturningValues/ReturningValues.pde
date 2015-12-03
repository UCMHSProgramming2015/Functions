void setup(){
  size(800,600);
}

void draw(){
  //provides a, b, and c variables for calculation functions
  float c = pythagorean(6, 50);
  float d = addThreeNumbers(4, 4, 4);
  //draws rectangles
  rect(width/2, height/2, c, c);
  rect(width/3, height/2, d, d);
  //prints values for c and d in command line
  println(c);
  println(d);
}

float pythagorean(float a, float b){
  float c = sqrt((a*a)+(b*b));
  return c;
}

float addThreeNumbers(float a, float b, float c){
  float d = (a+b+c);
  return d;
}