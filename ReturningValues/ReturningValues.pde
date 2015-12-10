float[] d = new float[15];
float[] x = new float[15];
float[] y = new float[15];
float[] velX = new float[15];
float[] velY = new float[15];

void setup() {
  size(800, 600);
  for (int i = 0; i < 15; i++) {
    d[i] = 3*powerThreeDividedByTwo(i);
    x[i] = random(width);
    y[i] = random(width);
    velX[i] = random(1, 10);
    velY[i] = random(1, 10);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 15; i++) {
    noStroke();
    if (i%2==0) {
      fill(0, 255, 0, 200);
      ellipse(x[i], y[i], d[i], d[i]);
    } else {
      fill(255, 0, 0, 200);
      ellipse(x[i], y[i], d[i], d[i]);
    }
    x[i] += (velX[i]);
    y[i] += (velY[i]);
    if (x[i] + d[i]/2 > width) {
      x[i] = width;
      velX[i] -=friction(velX[i]);//if the ball hits the right wall, assign x velocity the negative version of itself
      velX[i] *= -1;
    }
    if (x[i] - d[i]/2 < 0) {
      x[i] = 0;
      velX[i] *= -1;
      velX[i] -= friction(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + d[i]/2 > height) {
      y[i] = height;
      velY[i] -= friction(velY[i]);
      velY[i] *= -1;
    }
    if (y[i] - d[i]/2 < 0) {
      y[i] = 0;
      velY[i] -= friction(velY[i]);
      velY[i] *= -1;
    }
  }
}

/*****************/

float powerThreeDividedByTwo(float num) {
  float result = (sqrt((sq(num))*(num)));
  return result;
}

float friction(float vel) {
  float result = vel*.05;
  return result;
}