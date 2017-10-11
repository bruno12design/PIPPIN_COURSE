void setup(){
  size(1024,768);
}

void draw(){
  background(255);
  if (mousePressed == true) {
    fill(255,0,0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 50,50);

}