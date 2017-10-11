void setup() {

  size(800, 600);
}

void draw() {
  
  background(150);

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //arms
  strokeWeight(10);
  stroke(255, 100, 0);
  //right
  line(375, 200, 300, 250);
  //left
  line(425, 200, 500, 250);

  //wheel
  ellipseMode(CENTER);
  noStroke();
  fill(0, 30, 100);
  ellipse(400, 330, 48, 68);

  //body
  noStroke();
  fill(255, 255, 0);
  rect(375, 150, 50, 180);

  //head
  ellipseMode(CENTER);
  noStroke();
  fill(255, 100, 0);
  ellipse(400, 150, 80, 100);

  //eyes
  rectMode(CENTER);
  noStroke();
  fill(255, 255, 0);
  rect(380, 140, 30, 4);
  rect(420, 140, 30, 4);

  //mouth
  rect(400, 180, 40, 6);
}