float theta = 0;
float thetaStart = 0;
float circleSize = 100;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(2800, 1200);
}

void draw() {
  theta = thetaStart;
  background(0, 0, 100);
  stroke(3);
  println(sin(theta));
  for (int x = 0; x < width; x += circleSize - 20) {
    noStroke();
    fill(map(x, 0, width, 0, 360), 100, 100, 50);
    float y = map(sin(theta), -1, 1, height*.25, height*.75);
    ellipse(x, y, circleSize, circleSize);
    theta += .3;
  }
  thetaStart += .005;
}