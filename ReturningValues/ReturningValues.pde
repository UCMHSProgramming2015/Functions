void setup(){
size(800,600);
}

void draw(){
float c = pythagorean(5, 4);
float z = added(3,2,4);
println(z); //print whichever specified 
}

float pythagorean(float a, float b){
  float c = sqrt(pow(a,2)+pow(b,2)); 
return c;
}

float added(float w, float x, float y){
float z = w + x + y;
return z;
}