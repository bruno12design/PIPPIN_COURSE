class Safety {
  float x = random(700);
  float y = random(300);
  float xspeed = random(1, 5);
  float yspeed = random(1, 5);
  PImage safety;

  void displaySafety() {
    safety = loadImage("shield.png");
    imageMode(CENTER);
    image(safety, x, y);
  }

  void moveSafety() {
    x = x + random(xspeed);
    y = y + random(yspeed);
  }

  void checkEdges() {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }

    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
}