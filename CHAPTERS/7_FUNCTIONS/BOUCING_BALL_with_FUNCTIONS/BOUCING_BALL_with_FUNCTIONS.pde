float circleX;
float circleY;
float xspeed = 4.3;
float yspeed = random(2.6,4.6);
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
  displayBall();
  moveBall();
  checkEdges();
}

void displayBall() {
  fill(changeColorRed, changeColorGreen, changeColorBlue);
  noStroke();
  ellipse(circleX, circleY, 12, 12);
}

void moveBall() {
  if (going) {
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
}
}

void checkEdges() {
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