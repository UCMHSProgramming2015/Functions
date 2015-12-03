float c;
void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  pythaTheorem(5, 3);
  println(functionResult(6, 7, 9));
}

void pythaTheorem(float a, float b) {
  float c = sqrt(sq(a) + sq(b));
  text("The square root of squared " +a+ " and " +b+ " equals " +c, width/2, height/2);
}

float functionResult(float x, float y, float z) {
  float w = x + y + z;
  return w;
}