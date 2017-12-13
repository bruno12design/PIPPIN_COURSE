class Worker1 {

  int ballSize = 20;
  float ballX = 50; 
  float ballXSpeed;
  float red;
  float green;
  float blue;

  int btX;
  int btY;
  int btSize;


  void displayProduct() {
    ellipseMode(CENTER);
    noStroke();
    fill(200, 20, 20);
    ellipse(ballX, 80, ballSize, ballSize);
    ballX = ballX + ballXSpeed;

    if (ballX > width) {
      ballX = 0;
    }
  }

  void displayWorker() {
    rectMode(CENTER);
    noStroke();
    fill(red, green, blue);
    rect(btX, btY, btSize, btSize);
    btSize = 30;
    btX = 50;
    btY = 50;
    red = 0;
    green = 200;
    blue = 255;

    if (ballXSpeed > 10) {
      ballXSpeed = ballXSpeed * -1;
    }
  }

  void applyStress() {
  //  void mouseClicked() {
      if ((mouseX >= btX && mouseX <= btX+btSize)&&(mouseY >= btY && mouseY <= btY+btSize)) {
        if (mousePressed && (mouseButton == LEFT)) {
        ballXSpeed = ballXSpeed + 0.2;
        red = red + 20;
        green = green - 40;
      }
    }
  }
}