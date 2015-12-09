float[] w = new float[15];
float[] h = new float[15];
float[] x = new float[15];
float[] y = new float[15];
float[] velX = new float[15];
float[] velY = new float[15];

void setup() {
  size(800, 600);
  for (int i = 0; i < 15; i++) {
    w[i] = 3*powerThreeDividedByTwo(i);
    h[i] = 3*powerThreeDividedByTwo(i);
    x[i] = random(width);
    y[i] = random(width);
    velX[i] = random(-10, 10);
    velY[i] = random(-10, 10);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 15; i++) {
    noStroke();
    if (i%2==0) {
      fill(0, 255, 0, 200);
      ellipse(x[i], y[i], w[i], h[i]);
    } else {
      fill(255, 0, 0, 200);
      ellipse(x[i], y[i], w[i], h[i]);
    }
    x[i] += (velX[i]);
    y[i] += (velY[i]);
    if (x[i] + w[i]/2 >= width) {
      x[i] = width-1;
      velX[i] -= friction(velX[i]);//if the ball hits the right wall, assign x velocity the negative version of itself
      velX[i] *= -1;
    } else if (x[i] - w[i]/2 <= 0) {
      x[i] = 1;
      velX[i] -= friction(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
      velX[i] *= -1;
    }
    if (y[i] + h[i]/2 >= height) {
      y[i] = height-1;
      velY[i] -= friction(velY[i]);
      velY[i] *= -1;
    } else if (y[i] - h[i]/2 <= 0) {
      y[i] = 1;
      velY[i] -= friction(velY[i]);
      velY[i] *= -1;
    }
  }
}

/*****************/

float powerThreeDividedByTwo(float num) {
  float result = (sqrt(sq(num)*(num)));
  return result;
}

float friction(float vel) {
  float result = vel*.05;
  return result;
}