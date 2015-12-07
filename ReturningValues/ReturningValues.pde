float c;
PImage art;

void setup(){
  size(600,600);
  art = loadImage("art.jpg");
}

void draw(){
  background(art);
  c = PythagoreanTheorem();
  textSize(100);
  textAlign(CENTER, CENTER);
  text(c,300,300);
}

float PythagoreanTheorem(){
  float a= 6;
  float b= 5;
  float c= sqrt(sq(a)+sq(b));
  return c;
}