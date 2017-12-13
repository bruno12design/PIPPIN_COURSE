Worker1 a;
Worker2 b;
Worker3 c;

void setup() {
  size (500, 300);
  a = new Worker1();
  b = new Worker2();
  c = new Worker3();
}

void draw() {
  background (255);
  
  //Worker 1
  a.displayProduct();
  a.displayWorker();
  a.applyStress();
  
  //Worker 2
  b.displayProduct();
  b.displayWorker();
  b.applyStress();
  
  //Worker 3
  c.displayProduct();
  c.displayWorker();
  c.applyStress();
}