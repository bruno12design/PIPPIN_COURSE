//IMAGES
PImage brazil;
PImage canada;
PImage heart;
PImage safety;
PImage ball;
PImage cad;
PImage real;
PImage crime;
PImage hockey;
PImage snow;
PImage sun;

//Icons size
float iconSize = 32;
float brIconSize = 32;
float caIconSize = 32;

//Icons position
float brX = random(700);
float brXspeed = random(1, 2);
float brY = random(300);
float brYspeed = random(1, 2);
float caX = random(700);
float caXspeed = random(1, 2);
float caY = random(300);
float caYspeed = random(1, 2);

//Heart floats

float heartX = 360;
float heartY = 320;

void setup() {
  size (720, 360);
  //load Images
  heart = loadImage("heart.png");
  safety = loadImage("shield.png");
  ball = loadImage("soccerball.png");
  brazil = loadImage("brazil.png");
  canada = loadImage("canada.png");
  cad = loadImage("CAD.png");
  real = loadImage("REAL.png");
  crime = loadImage("CRIME.png");
  hockey = loadImage("Hockey.png");
  sun = loadImage("SUN.png");
  snow = loadImage("SNOW.png");
}

void draw() {
  background(250);

  //bar(slider)
  rectMode(CENTER);
  noStroke();
  fill(50, 180, 100);
  rect(360, 320, 640, 8);

  //flags
  imageMode(CENTER);
  image(brazil, 40, 320);
  image(canada, 680, 320);

  //heart slider
  imageMode(CENTER);
  image(heart, heartX, heartY);

  //ICONS

  image(safety, caX, caY, caIconSize, caIconSize);
  image(crime, brX, brY, brIconSize, brIconSize);
  image(snow, caX, caY, caIconSize, caIconSize);
  image(sun, brX, brY, brIconSize, brIconSize);
  image(cad, caX, caY, caIconSize, caIconSize);
  image(real, brX, brY, brIconSize, brIconSize);
  image(hockey, caX, caY, caIconSize, caIconSize);
  image(ball, brX, brY, brIconSize, brIconSize);


  //MOVEMENT
  caX = caX + random(caXspeed);
  caY = caY + random(caYspeed);
  brX = brX + random(brXspeed);
  brY = brY + random(brYspeed);

  //CHECK EDGES
  if (caX > width || caX < 0) {
    caXspeed = caXspeed * -1;
  }
  if (caY > height || caY < 0) {
    caYspeed = caYspeed * -1;
  }
  if (brX > width || brX < 0) {
    brXspeed = brXspeed * -1;
  }
  if (brY > height || brY < 0) {
    brYspeed = brYspeed * -1;
  }
}

//INTERACTION
void mouseClicked() {
  if ((mouseX >= caX && mouseX <= caX+caIconSize)&&(mouseY >= caY && mouseY <= caY+caIconSize)) {
    //if (mousePressed && (mouseButton == LEFT)) 
    heartX = heartX + 20;
    caIconSize = caIconSize + 2;
    brIconSize = brIconSize - 2;
    noFill();
    strokeWeight(2);
    stroke(225,15,15);
    ellipse(mouseX, mouseY, 34, 34);
  }

  if ((mouseX >= brX && mouseX <= brX+brIconSize)&&(mouseY >= brY && mouseY <= brY+brIconSize)) {
    //if (mousePressed && (mouseButton == LEFT)) 
    heartX = heartX - 20;
    brIconSize = brIconSize + 2;
    caIconSize = caIconSize - 2;
    noFill();
    strokeWeight(2);
    stroke(50,150,20);
    ellipse(mouseX, mouseY, 34, 34);
  }
}