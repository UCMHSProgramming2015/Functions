PImage jon;

int time;

void setup(){
  size(480, 480);
  
  jon = loadImage("jon.png");
  imageMode(CENTER);
}

void draw(){
  time = randomJon(time); 
}

int randomJon(int col){
  col++;
  
  tint(col % 255, 0, 255 - (col % 255));
  
  image(jon, random(width), random(height));
  
  println(pythag(col % 255, 255 - (col % 255)));
  
  return col;
}

float pythag(float a, float b){
  return sqrt(pow(a,2)+pow(b,2));
}