class Log {
  float x, y;
  float speed;


  Log(float nx, float ny) {
    x=nx;
    y=ny;
    speed=2;
  }

  void move() {
    x+=speed;

    if (x>width+30) {
      x=-100;
    }
  }
    boolean didHitFrog(float fx, float fy) {
      if (abs(x+60-fx) < 60 && (y-fy) <5) {
        println("on log");
        return true;
      } else {
        return false;
      }
    }
  
  void display() {
    fill(102, 51, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(x, y+13, 10, 25);
    noStroke();
    rect(x, y, 120, 26);
    stroke(0);
    strokeWeight(1);
    ellipse(x+120, y+13, 10, 25);
  }
}
