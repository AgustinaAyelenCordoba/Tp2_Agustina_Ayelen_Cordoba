 public class Vehiculo extends GameObject{
  private PImage imagen;
  Vehiculo(PVector posicion, PVector velocidad){
  this.posicion=posicion;
  this.velocidad=velocidad;
  }
 void display(){
    imagen=loadImage("Vehiculo.png");
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,50,50);
  }
  public void movimiento(){
     this.posicion.x-=this.velocidad.x;
    if(this.posicion.x<-30){
    this.posicion.x=width;
    }
  }
}
