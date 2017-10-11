void setup(){
  size (640,360);
}

void draw(){
  background(0);
  
  if ((mouseX < 320) && (mouseY < 180)){
  fill(255,0,0);
  rect(0,0,320,180);
  }
  if ((mouseX > 320) && (mouseY < 180)){
  fill(0,255,0);
  rect(320,0,320,180);
  }
  if ((mouseX < 320) && (mouseY > 180)){
  fill(0,0,255);
  rect(0,180,320,180);
  }
  if ((mouseX > 320) && (mouseY > 180)){
  fill(255,150,0);
  rect(320,180,320,180);
  }
}