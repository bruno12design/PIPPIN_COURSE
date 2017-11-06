Ball b;

void setup() {
  size(340, 240);
  b = new Ball();
}

void draw() {
  background(255);
  b.displayBall();
  b.moveBall();
  b.checkEdges();
  b.destroyBall();
}