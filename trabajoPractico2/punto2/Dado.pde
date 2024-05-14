//class Dado extends GameObject {
  // provate int valor;
   
  // public void display(){
  // }
   
  // Public void gnerarValor(){
  // }
class Die {
  int xPos, yPos, dieSize;
  int side;

  Die(int tempX, int tempY, int tempSize) {
    xPos=tempX;
    yPos=tempY;
    dieSize=tempSize;
    side=1;
  }

  void display() {
    noStroke();
    fill(#FFF3D6);
    rectMode(CENTER);
    rect(xPos, yPos, diceSize, diceSize, diceSize/5);

    //dots
    fill(50);
    if (side == 1 || side == 3 || side == 5)
      ellipse(xPos, yPos, diceSize/5, diceSize/5);
    if (side == 2 || side == 3 || side == 4 || side == 5 || side == 6) {
      ellipse(xPos - diceSize/4, yPos - diceSize/4, diceSize/5, diceSize/5);
      ellipse(xPos + diceSize/4, yPos + diceSize/4, diceSize/5, diceSize/5);
    }
    if (side == 4 || side == 5 || side == 6) {
      ellipse(xPos - diceSize/4, yPos + diceSize/4, diceSize/5, diceSize/5);
      ellipse(xPos + diceSize/4, yPos - diceSize/4, diceSize/5, diceSize/5);
    }
    if (side == 6) {
      ellipse(xPos, yPos - diceSize/4, diceSize/5, diceSize/5);
      ellipse(xPos, yPos + diceSize/4, diceSize/5, diceSize/5);
    }
  }

  void randomize() {
    side = int(random(1, 7));
  }
  
  int state(){
    return side;
  }
  
}   
