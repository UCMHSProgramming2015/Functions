float number;
float variable = 20;
void setup() {
  size(2000, 1000);
}

void draw() {
  //println(divideByTwo(84));

  ellipse(mouseX, mouseY, findTheHypotenuse(120, 240), findTheHypotenuse(5, 12));
  println(findTheHypotenuse(50, 120));
}



float divideByTwo(float input) {
  float result = input/2;
  return result;
}

float findTheHypotenuse(float a, float b) {
  float c = sqrt(sq(a) + sq(b));
  return c;
}