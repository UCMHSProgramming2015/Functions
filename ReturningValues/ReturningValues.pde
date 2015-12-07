
void setup(){
  size(800,600);
  textSize(50);
  textAlign(CENTER);
}
void draw(){
  background(0);
  pythagorean(5,12);
  addthreenumbers(8,98,76);
}
void pythagorean(float x, float y){
  text(sqrt(sq(x) + sq(y)),width/2,height/2);
}
void addthreenumbers(float uno, float dos, float tres){
  float c = uno + dos + tres;
  text(c,width/2 + 100,height/2 + 100);
}

  