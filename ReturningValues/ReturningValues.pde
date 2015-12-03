void setup() {
  size(100,100);
}

void draw() {
  println(PythagTheorem(1,2));
}

float PythagTheorem(float a, float b) {
  return sqrt(sq(a)+sq(b));
}