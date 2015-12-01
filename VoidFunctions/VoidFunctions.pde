float x;
float y;
float diam;
int total = 50;
PVector [] lag = new PVector[total];

void setup() {
  size(500, 500);
  for (int i = 0; i < total; i++) {
    lag[i] = new PVector(-100, -100);
  }
}

void square(float c1, float c2, float c3, float alpha) {
  fill(c1, c2, c3, alpha);
  rect(width/2-25, height/2-25, 50, 50);
}

void circle(float x, float y, float diam, float c1, float c2, float c3, float alpha) {
  fill(c1, c2, c3, alpha);
  ellipse(mouseX, mouseY, diam, diam);
}

void ripples(float x, float y) {
}

void draw() {
  background(0);
  x = mouseX;
  y = mouseY;
  diam = 30;
  stroke(255);
  square(255, 255, 255, 128);
  noFill();
  for (int i = 0; i < total-1; i++) {
    lag[i].set(lag[i+1]);
  }
  lag[total-1].set(x,y);
  for (int i = 0; i < total; i++) {
    stroke(255, 255*i/(total-1));
    ellipse(lag[i].x, lag[i].y, diam, diam);
  }
  circle(x, y, diam, 255, 0, 0, 128);
}