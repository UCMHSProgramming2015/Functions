void setup(){
size(800,600);
}

void draw(){
drawBlueCircle();

}

void drawBlueCircle(){
float diam = 50;
noStroke();
fill(0,0,255);
ellipse(width/2,height/2,diam,diam);
} 