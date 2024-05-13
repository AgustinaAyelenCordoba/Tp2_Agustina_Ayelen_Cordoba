public class Camino extends GameObject{
  private int ancho;
  private int alto;
  private color colorC;

Camino(PVector pos){
  this.posicion=pos;
 
}
  
  void display(){
    fill(colorC);
    rectMode(CENTER);
    rect(this.posicion.x,this.posicion.y,ancho,alto);

  }
void setAncho(int ancho){
    this.ancho=ancho;
  }
  public int getAncho(){
    return this.ancho;
  } 
  void setAlto(int alto){
    this.alto=alto;
  }
  public int getAlto(){
    return this.alto;
  }
  void setColorC(color colorC){
    this.colorC=colorC;
  }
  public int getColorC(){
    return this.colorC;
  }

}
