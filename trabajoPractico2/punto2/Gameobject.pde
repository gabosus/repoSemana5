//Left click to random face
//Right click to roll the die, then left to stop.
//Created by Vitor Carneiro and posted to Open Processing
//Modified by Tom Pasquini
//Modified by Luis M. Iglesias

int diceSize = 200;
int one=0;
int two=0;
int three=0;
int four=0;
int five=0;
int six=0;
boolean reset=false;
Die die1;



void setup() {
  frameRate(25);
  size(600, 350);
  
 
  noLoop();
  die1=new Die(width/4, height/2, diceSize);
smooth();
}

  
void draw() {
  background(173, 216, 230);

  
  
  die1.randomize();
  die1.display();

  switch(die1.state()) {
  case 1:
    one++;
    break;
  case 2:
    two++;
    break;
  case 3:
    three++;
    break;
  case 4:
    four++;
    break;
  case 5:
    five++;
    break;
  case 6:
    six++;
    break;
  }

totalDisplay();

noLoop();
    
}

void totalDisplay() {

  fill(0);
  int total=one+two+three+four+five+six;
    textSize(20);
  text("LANZAMIENTO DE UN DADO", width/3 - 20,25);
  textSize(15);
  text("Pulsa cualquier tecla para lanzar el dado.", 300,50);
  text("Total de lanzamientos : "+total, width-225, 125);
  text("El 1 ha salido: "+one+" veces. "+int(100*one/total)+"%", width-225, 150);
  text("El 2 ha salido: "+two+" veces. "+int(100*two/total)+"%", width-225, 175);
  text("El 3 ha salido: "+three+" veces. "+int(100*three/total)+"%", width-225, 200);
  text("El 4 ha salido: "+four+" veces. "+int(100*four/total)+"%", width-225, 225);
  text("El 5 ha salido: "+five+" veces. "+int(100*five/total)+"%", width-225, 250);
  text("El 6 ha salido: "+six+" veces. "+int(100*six/total)+"%", width-225, 275);

}

void mousePressed() {
  loop();
}

void keyPressed(){
  if (key=='r'){
  one=0;
  two=0;
  three=0;
  four=0;
  five=0;
  six=0;
  reset=true;
  loop();
  }
  else{
    loop();
  }
}
