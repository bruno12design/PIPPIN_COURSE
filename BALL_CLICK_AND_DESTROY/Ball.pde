class Ball {
  float x = 0;
  float y = 0;
  float xspeed = 1;
  float yspeed = 1;
  float fillRedColor = 255;
  float fillGreenColor = 255;
  float fillBlueColor = 255;
  float fillAlpha = 255;
  float ballSize = 32;

  void displayBall() {
    noStroke();
    fill(fillRedColor, fillGreenColor, fillBlueColor, fillAlpha);
    ellipse(x, y, ballSize, ballSize);
    fillGreenColor = 0;
    fillBlueColor = 0;
  }

  void moveBall() {
    x = x + xspeed;
    y = y + yspeed;
  }

  void checkEdges() {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }

    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
  void destroyBall() {
    if ((mouseX >= x && mouseX <= x+ballSize)&&(mouseY >= y && mouseY <= y+ballSize)) {
      if (mousePressed && (mouseButton == LEFT)) {
        fillAlpha = 0;
      }
    }
  }
}