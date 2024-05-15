class Truck extends Car {
  PImage imgTruck;
 

  Truck(float nx, float ny, float nspeed) {
    super(nx, ny, nspeed);
    speed=nspeed;
    imgTruck = loadImage("truck.png");
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
    imgTruck.resize(100, 25);
    image(imgTruck, x, y+47);
  }
}
