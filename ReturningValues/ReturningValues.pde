void setup(){
  size(700,700);
  background(0);
}
void draw(){
  println(hypotenuseOfRightTriangle(1,sqrt(3)));
}

float hypotenuseOfRightTriangle(float a, float b){
  float answer;
  answer=sqrt(sq(a)+sq(b));
  return(answer);
}