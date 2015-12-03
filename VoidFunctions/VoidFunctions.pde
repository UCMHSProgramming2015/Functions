//declare variables
int weight = 2;
float x;
float y;
float diam = 10;
int total = 50;
PVector [] lag = new PVector[total];

void setup() {
  //set size and strokeweight
  size(500, 500);
  strokeWeight(weight);
  
  //set lag values initially so that they are not visible
  for (int i = 0; i < total; i++) {
    lag[i] = new PVector(-diam-weight*total, -diam-weight*total);
  }
}

//define square function to include color
void square(float c1, float c2, float c3, float alpha) {
  fill(c1, c2, c3, alpha);
  rect(width/2-25, height/2-25, 50, 50);
}

//define circle function to include position, diameter, color
void circle(float x, float y, float diam, float c1, float c2, float c3, float alpha) {
  fill(c1, c2, c3, alpha);
  ellipse(mouseX, mouseY, diam, diam);
}

void draw() {
  //draw background
  background(0);

  //define x as mouseX in case mouse moves within frame
  x = mouseX;
  y = mouseY;

  //set stroke and draw square
  stroke(255);
  square(255, 255, 255, 128);
  
  //remove fill for ripples
  noFill();

  //shift values for lag
  for (int i = 0; i < total-1; i++) {
    lag[i].set(lag[i+1]);
  }

  //set final lag to mouse position
  lag[total-1].set(x, y);

  //draw all ripples at location
  for (int i = 0; i < total; i++) {
    stroke(255, 255*i/(total-1));
    ellipse(lag[i].x, lag[i].y, diam+weight*(total-1-i), diam+weight*(total-1-i));
  }
  
  //draw circle
  circle(x, y, diam, 255, 0, 0, 128);
}