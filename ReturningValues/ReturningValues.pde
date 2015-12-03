void setup() {
}

void draw() {
println(Hypotenuse(5,12));
}

float Hypotenuse(float a, float b){
float c = sqrt(sq(a) + sq(b));
return c;
}