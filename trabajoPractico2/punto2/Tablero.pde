class Tablero extends GameObject{

  public Tablero() {
  }
  
  public void Tablero(PVector posicion){
    this.posicion=posicion;
  }
  

  public void display(){
   rect(this.posicion.x, this.posicion.y, ((width *5)/6), ((height * 4)/6));
   fill(0);
  }
  

}
