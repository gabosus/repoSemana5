class Turtle {

  float x, y;
  float speed;

  Turtle(float nx, float ny, float nspeed) {
    x = nx;
    y = ny;
    speed = nspeed;
  }

  void move() {
    x+=speed;
    if (x>width+30) {
      x=-100;
    }
  }
  boolean didHitFrog(float fx, float fy) {
    if (dist(x, y, fx, fy)<20) {
      println("sploosh");
      return true;
    } else {
      return false;
    }
  }

  void display() {
    
    ellipse(x,y,40,50);
  }
}
