class Tablero extends GameObjetc{
  private Dado dado1;
    Tablero(){
  }
  public Tablero(PVector posicion){
    this.posicion=posicion;
  }
  void setDado(Dado dado){
    this.dado1=dado;
  }
  
  void display(){
    fill(#ED1AEA);
    rectMode(CENTER);
    rect(posicion.x,posicion.y,width-30,height-30);
  }
   public void mostrarNumero(){
    switch(dado1.getNumero()){
      case 1:
        textSize(30);
        fill(0);
        text("Conejo",this.posicion.x*2-120,50);
        break;
      case 2:        
        stroke(0);
        textSize(30);
        fill(0);
        text("Kitty",this.posicion.x*2-100,50);
        break;
      case 3:     
        stroke(0);
        textSize(30);
        fill(0);
        text("Kuromi",this.posicion.x*2-120,50);
        break;
      case 4:
       stroke(0);
        textSize(30);
        fill(0);
        text("Melody",this.posicion.x*2-120,50);
        break;
      case 5:
        stroke(0);
        textSize(30);
        fill(0);
        text("Niña",this.posicion.x*2-100,50);
        break;
      case 6:        
        stroke(0);
        textSize(30);
        fill(0);
        text("Niño",this.posicion.x*2-100,50);
        break;
      }
    }
}
