class Dado extends GameObject{
 
  private int imagen;
  private int[] valor;

  public Dado() {
  
    valor = new int[6];
    posicion = new PVector(0, 0);
  }
  //
    public void Posicion(int x, int y) {
    posicion.set(x,y);
  }

 
  @Override
  public void display(){
   imagen = (int) random(imagenes.length);
   int dado = 0;
   while (dado < valor.length) {
    valor[dado] = (int) random(1, 7);
    dado++;
  }
}


  public int getIndiceImagen(){
    return imagen;

  }
  
  public void setImagen(int imagen) {
    this.imagen = imagen;
  }
  
 
    public int[] getValor(){
    return valor;
  }

}
