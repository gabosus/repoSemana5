class Quad {

  float x, y;
  float speed;
  PImage img;
  Quad(float nx, float ny, float nspeed) {
    x = nx;
    y = ny;
    speed = nspeed;
    img = loadImage("quad.png");
  }

  void move() {
    x+=speed;
    if (x>width+30) {
      x=-100;
    }
  }
    boolean didHitFrog(float fx, float fy) {
      if (dist(x, y, fx, fy)<20) {
        println("splat");
        return true;
      } else {
        return false;
      }
    }

  void display() {

    img.resize(0, 29);
    image(img, x, y);
  }
}
