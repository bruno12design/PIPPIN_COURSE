//FLOATERS
float circleX;
float circleY;
float colorRed;
float colorGreen;
float colorBlue;
float alpha;
float circleWidth;
float circleHeight;

void setup() {
  size(640, 320);
  background(50);
  circleX=width/2;
  circleY=height/2;
}

void draw() {

  //Drawing Stuff
  
  circleX=random(width);
  circleY=random(height);
  fill(colorRed, colorGreen, colorBlue, alpha);
  strokeWeight(0);
  ellipse(circleX, circleY, circleWidth, circleHeight);
  
  //Logic
  circleWidth=(20);
  circleHeight=(20);
  colorRed=random(1,255);
  colorGreen=random(1,255);
  colorBlue=random(1,255);
  alpha=random(1,255);
  
}