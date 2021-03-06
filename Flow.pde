int num = 1000;
Particle[] particles = new Particle[num];

void setup() {
  size(1024, 728, P3D);
  noStroke();
  for (int i=0; i<num; i++) {
    PVector loc = new PVector(random(width*1.2), random(height));
    float rad = random(TWO_PI);
    PVector speed = new PVector(0, 0);
    PVector acc = new PVector(cos(rad), sin(rad));
    particles[i]= new Particle(loc, speed, acc);
  }
}

void draw() {
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);
  fill(255, 155); 
  for (int i=0; i<particles.length; i++) {
    particles[i].run();
  }
}

class Particle {
  PVector loc, speed, acc;
  color col;
  float rad;
  float maxVel = 1.0;
  float w = 500.0;
  float h = 500.0;
  float f = 1000.0;
  
   Particle(PVector _loc, PVector _speed, PVector _acc) {
    loc   = _loc;
    speed = _speed;
    acc   = _acc;
  }
  
  Particle() {
    loc = new PVector(random(width*1.2), random(height));
    rad = random(TWO_PI);
    speed = new PVector(0, 0);
    acc = new PVector(cos(rad), sin(rad));
  }
  
  void run() {
    move();
    checkEdges();
    render();
  }
  
   void move() {
    float deg = 360.0*noise(
      loc.x/w, 
      loc.y/h, 
      millis()/10000.0);

    rad=radians(deg);

    acc.set(cos(rad), sin(rad));

    speed.add(acc);
    if (speed.magSq()>maxVel) {
      speed.normalize();
      speed.mult(maxVel);
    }
    loc.add(speed);
  }
  
  void checkEdges() {
    if (loc.x<0 || loc.x>width || loc.y<0 || loc.y>height) {    
      loc.x = random(width*1.2);
      loc.y = random(height);
    }
  }
  
   void render() {
    ellipse(loc.x, loc.y, 2, 2);
  }
}
