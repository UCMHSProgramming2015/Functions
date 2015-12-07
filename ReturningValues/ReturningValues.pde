float a, b, c;
void setup() {
}
void draw() {
  a = random(100);
  b = random(100);
  c = random(100);
  println(add(a, b, c));
}

float add(float a, float b, float c) {
  float x = a + b + c;
  return x;
}