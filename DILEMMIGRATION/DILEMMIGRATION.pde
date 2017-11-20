//flags
PImage brazil;
PImage canada;

//Icons size
float iconSize = 32;

//Heart floats
PImage heart;
float heartX = 360;
float heartY = 320;

//Safety floats
PImage safety;
float safetyX = random(700);
float safetyY = random(300);
float safetySpeedX = random(1,5);
float safetySpeedY = random(1,5);

//Ball floats
PImage ball;
float ballX = random(700);
float ballY = random(300);
float ballSpeedX = random(1,5);
float ballSpeedY = random(1,5);

void setup(){
size (720,360);
heart = loadImage("heart.png");
safety = loadImage("shield.png");
ball = loadImage("soccerball.png");
brazil = loadImage("brazil.png");
canada = loadImage("canada.png");
}
  
void draw(){
  background(250);
 
  //bar
  rectMode(CENTER);
  noStroke();
  fill(50,180,100);
  rect(360, 320, 640, 8);
  
  //flags
  imageMode(CENTER);
  image(brazil, 40, 320);
  image(canada, 680, 320);
  
  //heart slider
  imageMode(CENTER);
  image(heart, heartX, heartY);
  
  //Safety icon
  
  //Safety initial position
  imageMode(CENTER);
  image(safety, safetyX, safetyY, iconSize, iconSize);
 
  //Safety move
  safetyX = safetyX + random(safetySpeedX);
  safetyY = safetyY + random(safetySpeedY);
  
  //Safety check edges
  if (safetyX > width || safetyX < 0) {
    safetySpeedX = safetySpeedX * -1;
  }
  if (safetyY > height || safetyY < 0) {
    safetySpeedY = safetySpeedY * -1;
  }
  
  //Safety destroy and move slider
  if ((mouseX >= safetyX && mouseX <= safetyX+iconSize)&&(mouseY >= safetyY && mouseY <= safetyY+iconSize)) {
      if (mousePressed && (mouseButton == LEFT)) {
        heartX = heartX + 4;
      }
  }
  
  //Ball icon
  
  //Ball initial position
  imageMode(CENTER);
  image(ball, ballX, ballY, iconSize, iconSize);
 
  //Ball move
  ballX = ballX + random(ballSpeedX);
  ballY = ballY + random(ballSpeedY);
  
  //Ball check edges
  if (ballX > width || ballX < 0) {
    ballSpeedX = ballSpeedX * -1;
  }
  if (ballY > height || ballY < 0) {
    ballSpeedY = ballSpeedY * -1;
  }
  
  //Ball destroy and move slider
  if ((mouseX >= ballX && mouseX <= ballX+iconSize)&&(mouseY >= ballY && mouseY <= ballY+iconSize)) {
      if (mousePressed && (mouseButton == LEFT)) {
        heartX = heartX - 4;
      }
  }
}