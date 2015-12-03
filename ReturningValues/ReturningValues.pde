void setup(){
  size(800,600);
}

void draw(){
  float c = pythagorean(6, 50);
  rect(width/2, height/2, c, c);
  println(c);
}

float pythagorean(float a, float b){
  float c = sqrt((a*a)+(b*b));
  return c;
}