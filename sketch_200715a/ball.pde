
class Ball {
  float x, y,  velX, velY;
  
  Ball() {
    // random starting position
    this.x = random(0, width);
    this.y = random(0, height);
    
    // random starting velocity
    this.velX = random(-7, 7);
    this.velY = random(-7, 7);
  }
  
  // ball displays itself
  void display() {
    ellipse(this.x, this.y, 20, 20);
   }
   
  // ball changes its position
  void move() {
    // move the ball by its velocity
    this.x = this.x + this.velX;
    this.y = this.y + this.velY;
  
    // bouncing off the sides
    if (this.x < 0 || this.x > width) {
      this.velX = this.velX * -1;
    }
    
    // bouncing off the top and bottom
    if (this.y < 0 || this.y > height) {
      this. velY = this.velY * -1;
    }
  }
}
