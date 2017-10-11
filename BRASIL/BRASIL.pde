void setup() {
  //defines the size of the screen
  size(1000, 800);
}

void draw() {
  //defines the color of the screen
  background(255);

  //rectangle
  rectMode(CENTER);
  fill(#19700B);
  strokeWeight(0);
  rect(500, 400, 500, 300, 2);

  //lonsangle
  fill(#FFFF00);
  strokeWeight(0);
  quad(280, 400, 500, 270, 720, 400, 500, 520);

  //circle
  fill(#0F5CA9);
  strokeWeight(0);
  ellipseMode(CENTER);
  ellipse(500, 400, 170, 170);
}