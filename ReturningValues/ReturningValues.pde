//Returns a value from PythagTheorem function

void setup() {
  size(100,100);
}

void draw() {
  println(PythagTheorem(1,2)); //print the value of the called function
}

float PythagTheorem(float a, float b) {
  return sqrt(sq(a)+sq(b)); //return the new value
}