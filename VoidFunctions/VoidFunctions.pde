PVector loc, vel;

void setup() {
  size(800, 600);

  loc = new PVector (width/3, height/2);
  vel = new PVector (random(10), random (10));
  loc.add(vel);
}

void draw() {
  background(0);
  drawABlueSquare();
  drawACircle();
  if (mousePressed) {
    drawADuck();
  }
}

void drawABlueSquare() {
  fill(5, 227, 255, 80);
  rect(width/2, height/2, 50, 50);
}

void drawACircle() {
  fill(random(255), mouseY, mouseX, 70);
  ellipse(mouseX, mouseY, 30, 30);
}

void drawADuck() {
  loc.add(vel);
  //Body
  fill(235, 235, 0);
  stroke(240, 230, 140);
  ellipse(loc.x, loc.y, 50, 50);
  arc(loc.x+50, loc.y+20, 70, 75, 0, PI);

  stroke(0, 0, 0);
  arc(loc.x+50, loc.y+35, 25, 20, 0, PI);

  //Legs & mouth
  stroke(255, 162, 0);
  strokeWeight(2);
  line(loc.x+48, loc.y+58, loc.x+43, loc.y+70);
  line(loc.x+58, loc.y+58, loc.x+66, loc.y+70);
  triangle(loc.x+36, loc.y+74, loc.x+43, loc.y+70, loc.x+46, loc.y+77);
  triangle(loc.x+64, loc.y+77, loc.x+66, loc.y+70, loc.x+73, loc.y+74);
  triangle(loc.x-20, loc.y+15, loc.x-35, loc.y+10, loc.x-25, loc.y);

  //Eye
  fill(0, 0, 0);
  noStroke();
  ellipse(loc.x-7, loc.y-3, 5, 5);

  //Movement
  if (loc.x>= width) {
    vel.x = -abs(vel.x);   
  } else if (loc.x <= 0) {
    vel.x = abs(vel.x);     
  }
  if (loc.y >= height) {
    vel.y = -abs(vel.y);    
  } else if (loc.y <= 0) {
    vel.y = abs(vel.y);     
  }
}


//dataType name(parameters) {block of code}