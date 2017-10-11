float X = 100;
boolean going = false;

void setup() {
  size (640, 360);
}

void draw() {
  background (50);
  fill(255);
  ellipse(X, 180, 24, 24);
if (going){
  X = X + 2;
}
}

void mousePressed() {
 going = !going;
}