class Hud {
  Dado dado;

  public Hud(Dado dado) {
    this.dado = dado;
  }

  public void display() {
    int imagenDado = dado.getIndiceImagen();
    textSize(50);
    text((imagenDado+1), 500, 100);

   
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Para tirar el dado use  espacio", width/2, height - 320);
    fill(255);
  }
}
