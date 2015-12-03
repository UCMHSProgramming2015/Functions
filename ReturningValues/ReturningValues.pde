void setup(){
  size(800,600);
}

void draw(){
  float c = pythagorean(6, 50);
  float d = addThreeNumbers(4, 4, 4);
  rect(width/2, height/2, c, c);
  rect(width/3, height/2, d, d);
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