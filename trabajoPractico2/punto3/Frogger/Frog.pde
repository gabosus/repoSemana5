class Frog {
  float x, y;
  float speed;


  Frog(float nx, float ny) {
    x=nx;
    y=ny;
    speed=2;
  }

  void move() {
    x+=speed;
  }

void display(){
   //body'
    rectMode(CENTER);
    noStroke();
    fill(#349D20);
    rect(x,y,20,30);
    ellipseMode(CENTER);
    ellipse(x,y-15,20,10);
    ellipse(x,y+15,20,10);
   //front right arm
   stroke(#349D20);
   strokeWeight(2);
    line(x+10,y-5,x+18,y-5);
    line(x+18,y-5,x+18,y-18);
   //left front arm
    line(x-10,y-5,x-18,y-5);
    line(x-18,y-5,x-18,y-18);
   //left bottom leg
    line(x-10,y+5,x-18,y+5);
    line(x-18,y+5,x-18,y+18);
   //right bottom leg
    line(x+10,y+5,x+18,y+5);
    line(x+18,y+5,x+18,y+18);
   //eyes
    noStroke();
    fill(255,0,0);
    ellipse(x+8,y-14,5,5);
    ellipse(x-8,y-14,8,8);
    rectMode(CORNER);
  }
  
  
}
