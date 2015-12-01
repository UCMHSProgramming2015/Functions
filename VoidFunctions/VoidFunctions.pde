//name variables
PImage derp;
PImage icecream;
float gameMode;

void setup() {
  //set canvas size
  size(600, 600);

  //load image
  derp = loadImage("newderp.png");
  icecream = loadImage("icecream.png");

  gameMode=0;
}

void draw() {
  //create background
  background(300,300,300);
  
  if(gameMode==0){
    fill(0);
    textSize(30);
    text("Help Kanye reach his true love",80,height/2);
  }
    if (gameMode==1) {
     drawIceCreamAt(random(width),random(height));
     drawKanyeAt(mouseX-400,mouseY-300);
  }
}


void drawKanyeAt(float x, float y) {
  x = mouseX-200;
  y = mouseY-150;
  image(derp, x, y);
  derp.resize(400,300);
}

void drawIceCreamAt(float i, float j){
  i = random(width)-37.5;
  j = random(height)-50;
  image(icecream, i, j);
  icecream.resize(75,100);
} 

void mousePressed(){
  gameMode=1;

}