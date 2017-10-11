//dimensions
float ellipseWidth;
float ellipseHeight;

//color
float fillRed;
float fillGreen;

void setup() {
  size(800, 600);
  ellipseWidth=5;
  ellipseHeight=5;
  fillRed=255;
}

void draw() {
  //Drawing Stuff
  background (50);
  fill(fillRed, fillGreen, 0, 255);
  strokeWeight(0);
  ellipseMode(CENTER);
  ellipse(400, 300, ellipseWidth, ellipseHeight);

  //Logic Stuff
  ellipseWidth=ellipseWidth+1;
  ellipseHeight=ellipseHeight+1;
  fillGreen=fillGreen+0.2;
}