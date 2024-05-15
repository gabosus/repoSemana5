Frog bob;
Quad [] dug=new Quad[3];
Car[] ferrari=new Car[5];
Truck[] truckBlue=new Truck[6];
Log [] logs=new Log[5];
Turtle [] dribble=new Turtle[1];

int x=0;

void setup() {
  //frameRate(200);
  size(400, 600);
  bob = new Frog(200, ((height/15)*14)-20);
  //dribble=new Turtle(200,200);
  int y3=247;
//  for (int w=0; w<dug.length; w++) {
//    dug[w]=new Log(x, y3);
//    if (x>width) {
//      x=0;
//      y3-=80;
//    }
//    logs[w]= new Log(x, y3);
//    x+=150;
//  }
  for (int d=0; d<logs.length; d++) {
    logs[d]=new Log(x, y3);
    if (x>width) {
      x=0;
      y3-=80;
    }
    logs[d]= new Log(x, y3);
    x+=150;
  }
  int y=487;
  for (int i=0; i<ferrari.length; i++) {
    //println(x, y);
    if (x>width) {
      x=0;
      y-=80;
    }
    ferrari[i]= new Car(x, y, 3);
    x+=100;
  }/////////////


  truckBlue[0]= new Truck(0, 400, 2);

  truckBlue[1]= new Truck(-200, 400, 2);
  truckBlue[2]= new Truck(-400, 400, 2);

  truckBlue[3]= new Truck(0, 320, 2);

  truckBlue[4]= new Truck(-200, 320, 2);
  truckBlue[5]= new Truck(-400, 320, 2);
}


void draw() {
  drawBackground();
  if (keyPressed)drawGridlines();
  for (int i=0; i<ferrari.length; i++) {
    ferrari[i].move();
    ferrari[i].display();
    if (ferrari[i].didHitFrog(bob.x-20, bob.y)) {
      bob.x=200;
      bob.y=((height/15)*14)-20;
    }
  }
  //
  for (int z=0; z<truckBlue.length; z++) {
    truckBlue[z].move();
    truckBlue[z].display();
    if (truckBlue[z].didHitFrog(bob.x, bob.y)) {
      bob.x=200;
      bob.y=((height/15)*14)-20;
    }
  }

  for (int d=0; d<logs.length; d++) {
    logs[d].move();
    logs[d].display();

    //    if (logs[d].didHitFrog(bob.x, bob.y)) {
    //      bob.x=bob.x+2;
    //      //bob.y=((height/15)*14)-20;
    //    }
  }
  bob.display();
  // dug.display();
  //dug.move();
  // water kill
  if (bob.y<280) {
    boolean alive=false;
    for (int i=0; i<logs.length; i++) {
      if (logs[i].didHitFrog(bob.x, bob.y)) {
        bob.x+=logs[i].speed;
        alive=true;
        break;
      }
    }
    if (!alive) {
      println("sploosh");
      bob.x=width/2;
      bob.y=((height/15)*14)-20;
    }
  }
}

void drawBackground() {
  noStroke();
  fill(0, 255, 0);
  rect(0, 0, width, height/15*2);
  fill(0, 0, 255);
  rect(0, (height/15)*2, width, (height/15)*5);
  fill(#722474);
  //fill(0);
  rect(0, (height/15)*13, width, (height/15));
  rect(0, (height/15)*7, width, (height/15));
  rect(0, (height/15)*14, width, (height/15));
  fill(0);
  rect(0, (height/15)*8, width, (height/15)*5);
  for (int x=30; x<width; x+=80) {
    for (int y=360; y<520; y+=40) {
      stroke(255, 255, 0);
      line(x, y, x+20, y);
    }
  }
}
void drawGridlines() {
  for (int x=0; x<=width; x+= 40) {
    for (int y=0; y<=height; y+=40) {
      if (key=='v') {
        noFill();
        stroke(255);

        rect(x, y, 40, 40);
      }
    }
  }
}
void keyPressed() {
  if (key=='w') {
    bob.y-=40;
  }
  if (key=='s') {
    bob.y+=40;
  }
  if (key=='a') {
    bob.x-=40;
  }
  if (key=='d') {
    bob.x+=40;
  }
}
