
void setup() {
 
}

void draw() {
 println( convertFeetToMiles(10000));
}


float convertFeetToMiles(float imput) {
  float result= imput/5280;
  return result;
  
}