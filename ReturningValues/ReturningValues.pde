float FtoC(float F) {
  float C = (F-32)*.555555555556;
  return C;
}

void draw() {
  println(FtoC(212));
}