//BALL INFO
float ballX;
float ballY;
float ballSize = 25;

//LEFTRACKET INFO
float leftRacketX;
float leftRacketY;

//RIGHTRACKET INFO
float rightRacketX;
float rightRacketY;

void setup()
{

  size(800, 600);

  //BALL INITIAL POSITION
  ballX = width/2;
  ballY = height/2;

  //LEFT RACKET INITIAL POSITION
  leftRacketX = width/2 - 300;
  leftRacketY = height/2;

  //RIGHT RACKET INITIAL POSITION
  rightRacketX = width/2 + 300;
  rightRacketY = height/2;
}

void draw()
{

  background(0);

  //BALL COLOR
  fill(255, 0, 0);
  ellipseMode(CENTER);
  ellipse(ballX, ballY, ballSize, ballSize);

  //LEFT RACKET COLOR
  fill(255, 120, 50);
  rectMode(CENTER);
  rect(leftRacketX, leftRacketY, 16, 100);

  //RIGHT RACKET COLOR
  fill(50, 120, 255);
  rectMode(CENTER);
  rect(rightRacketX, rightRacketY, 16, 100);
}

void keyPressed() {
  if (keyCode == DOWN) {
    leftRacketY=leftRacketY+10;
  }
  else if (keyCode == UP) {
   leftRacketY -= 10; 
  }
}