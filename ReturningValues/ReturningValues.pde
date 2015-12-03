//Returns a value from PythagTheorem function

void setup() {
  size(100,100);
}

void draw() {
  float result = PythagTheorem(3,5);
  println(result); //print the value of the called function
  println(addThreeVals(1,2,3));
}

float PythagTheorem(float a, float b) {
  return sqrt(sq(a)+sq(b)); //return the new value
}

float addThreeVals(float a, float b, float c) {
  return a + b + c;
}