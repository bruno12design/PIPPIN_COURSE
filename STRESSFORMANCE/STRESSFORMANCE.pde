int ballSize = 20;
int ballX; 
int ballXSpeed = 2;

int btX;
int btY;
int btSize;

void setup() {
  size (500, 250);
}

void draw() {
  background (255);
  
  //PERFORMANCE OF PRODUCTION 
  ellipseMode(CENTER);
  noStroke();
  fill(180, 50, 50);
  ellipse(ballX, 125, ballSize, ballSize);
  ballX = ballX + ballXSpeed;
  if (ballX > width){
    ballX = 0;
  }

//STRESS BUTTON
  rectMode(CENTER);
  noStroke();
  fill(20, 50, 255);
  rect(btX, btY, btSize, btSize);
  btSize = 50;
  btX = 250;
  btY = 50;
    
}

void mouseClicked() {
  if ((mouseX >= btX && mouseX <= btX+btSize)&&(mouseY >= btY && mouseY <= btY+btSize)) {
    ballXSpeed = ballXSpeed + 2;
  }
}