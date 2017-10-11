float circleX;
float circleY;
float xspeed = 5;
float yspeed = 5;
float changeColorRed = 0;
float changeColorGreen = 0;
float changeColorBlue = 0;
boolean going = false;

void setup() {
  size(640, 360);
  circleX = random(width);
  circleY = random(height);
  background(50);
}

void draw() {
  //background(50);
  fill(changeColorRed, changeColorGreen, changeColorBlue);
  //stroke(255, 255, 255);
  noStroke();
  //strokeWeight(4);
  ellipse(circleX, circleY, 12, 12);
if (going) {
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
}

  if (circleX > width || circleX < 0) {
    xspeed = xspeed * -1;
    changeColorRed = random(0,255);
    changeColorGreen = random(0,255);
    changeColorBlue = random(0,255);
  }

  if (circleY > height || circleY < 0) {
    yspeed = yspeed * -1;
    changeColorRed = random(0,255);
    changeColorGreen = random(0,255);
    changeColorBlue = random(0,255);
  }
}

void mousePressed() {
 going = !going;
}