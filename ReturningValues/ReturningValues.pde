void setup(){
size(800,600);
}

void draw(){
float c = pythagorean(5, 4);

println(c);
}

float pythagorean(float a, float b){
  float c = sqrt(pow(a,2)+pow(b,2)); 
return c;
}