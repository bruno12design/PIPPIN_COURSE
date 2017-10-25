class Bubble {

  float x;
  float y;
  float R;
  float G;
  float B;

  Bubble () {
x = width/2;
y = height;
  }
  
  void ascend() {
   y--; 
  }
  
    void display() {
      stroke(0);
      fill(127);
      ellipse(x, y, 64, 64);
    }
    
    void changeColor() {
     
      
    }
}