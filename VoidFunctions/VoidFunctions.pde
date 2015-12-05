//name variables
PImage derp;
PImage icecream;
float gameMode;
float i;
float j;

void setup() {
  //set canvas size
  size(600, 600);

  //load image
  derp = loadImage("newderp.png");
  icecream = loadImage("icecream.png");
  
  //set ice cream location and game mode
  i = random(37.5, width - 37.5)-37.5;
  j = random(50, height - 50)-50;
  gameMode=0;
}

void draw() {
  //create background
  background(300,300,300);
  
  //initiate game if user clicks
  if(gameMode==0){
    fill(0);
    textSize(30);
    text("Help Kanye reach his true love",80,height/2);
  }
    if (gameMode==1) {
     drawKanyeAt(mouseX-400,mouseY-300);
     drawIceCream();
  }
  
  if(mouseX <= i + 37.5 && mouseX >= i - 37.5){
    if(mouseY <= j + 50 && mouseY >= j - 50){
    drawIceCream();
    }
  }
}

//draw Kanye where cursor is
void drawKanyeAt(float x, float y) {
  x = mouseX-170;
  y = mouseY-190;
  image(derp, x, y);
  derp.resize(400,300);
}

//generate random ice cream 
void drawIceCream(){
  image(icecream, i, j);
  icecream.resize(75,100);
} 

void mousePressed(){
  //initiate game when user clicks
  gameMode=1;
}