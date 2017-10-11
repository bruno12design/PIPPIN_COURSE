float righthandX;
float lefthandX;
float handY;
float headsizeWidth;
float headsizeHeight;

void setup() {
  size(1024, 768);
}

void draw(){
  background(50);
  
  righthandX=random(400,410);
  lefthandX=random(612,622);
  //handY=random(280,290);
  
//body
stroke(255, 50, 100, 255);
strokeWeight(20);
line(512, 200, 512, 500);

//right arm
stroke(255, 50, 100, 255);
strokeWeight(20);
line(512, 200, 450, 300);
line(450, 300, righthandX, 280);

//left arm
stroke(255, 50, 100, 255);
strokeWeight(20);
line(512, 200, 574, 300);
line(574, 300, lefthandX, 250);

//head
headsizeWidth=random(60,80);
headsizeHeight=random(60,80);
stroke(255, 50, 100, 255);
strokeWeight(12);
ellipseMode(CENTER);
ellipse(512, 180, headsizeWidth, headsizeHeight);

//right leg
stroke(255, 50, 100, 255);
strokeWeight(20);
line(512, 500, 480, 560);
line(480, 560, 460, 650);

//left leg
stroke(255, 50, 100, 255);
strokeWeight(20);
line(512, 500, 544, 560);
line(544, 560, 564, 650);
}