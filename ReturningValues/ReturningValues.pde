float[] d = new float[15]; //arrays for the bouncy red and green balls
float[] x = new float[15];
float[] y = new float[15];
float[] velX = new float[15];
float[] velY = new float[15];

void setup() {
  size(800, 600); //canvas 800 by 600
  for (int i = 0; i < 15; i++) { //draw 15 bouncy red and green balls
    d[i] = 3*powerThreeDividedByTwo(i); //look a function! determines diameter of ball
    x[i] = random(width); //balls start off wherever
    y[i] = random(width);
    velX[i] = random(1, 10); //speed is random
    velY[i] = random(1, 10);
  }
}

void draw() {
  background(0); //background refreshes so balls don't leave a trail of stationary christmas ornaments
  for (int i = 0; i < 15; i++) {
    noStroke(); //no stroke
    if (i%2==0) { //if/else loop below means half of the balls are red and half are green
      fill(0, 255, 0, 200);
      ellipse(x[i], y[i], d[i], d[i]);
    } else {
      fill(255, 0, 0, 200);
      ellipse(x[i], y[i], d[i], d[i]);
    }
    x[i] += (velX[i]); //position changes by velocity
    y[i] += (velY[i]);
    if (x[i] + d[i]/2 > width) { //next four if statements make ball bounce
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
  holidayCheer(); //pretty lights! i managed to decorate my code for the holidays
}

/*****************/

float powerThreeDividedByTwo(float num) { //returns a number^(3/2)
  float result = (sqrt((sq(num))*(num)));
  return result;
}

float friction(float vel) { //friction is velocity/20, just for simplicity (i was NOT making up a coefficient of kinetic friction for this)
  float result = vel*.05;
  return result;
}

void holidayCheer() {
  float[] lx = new float[80]; //80 pretty lights
  float[] ly = new float[80]; //80 pretty lights also have y-coordinates
  for (int i = 0; i < 80; i++) {
    lx[i] = 10*(i); //makes lights spaced out
    ly[i] = 10+10*sin(i); //allows the lights to hang as if from a roof but also ensures they're not stuck offscreen
    fill(255, 255, 230); //lights aren't pure white. i tried for a whitish-yellowish, but i'm colorblind, so if i'm wrong, i swear i really did try.
    ellipse(lx[i], ly[i], 5, 5); //actually draw the lights, with diam of five
  }
}
