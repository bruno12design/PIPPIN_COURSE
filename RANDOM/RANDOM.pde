float circleX;
float circleY;
float colorRed;
float colorBlue;
float colorGreen;
float colorAlpha;

void setup() {
  size(500, 500);
  background(200);
}

void draw() {

  circleX = random(width);
  circleY = random(height);
  colorRed = random(255);
  colorGreen = random(255);
  colorBlue = random(255);
  colorAlpha = random(255);
  //Ellipse

  noStroke();
  fill(colorRed, colorBlue, colorGreen, colorAlpha);
  ellipse(circleX, circleY, 25, 25);
}