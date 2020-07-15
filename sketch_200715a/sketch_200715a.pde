
Ball[] bouncingBalls = new Ball[10];

void setup() {
  size(500, 500);
  background(50);
  
  // create all bouncing balls
  for (int i = 0; i < bouncingBalls.length; i++) {
    bouncingBalls[i] = new Ball();
  }

}

void draw() {
  background(0);
  
  // for each ball, display and move
  for (Ball b : bouncingBalls) {
    b.move();
    b.display();
  }
}
