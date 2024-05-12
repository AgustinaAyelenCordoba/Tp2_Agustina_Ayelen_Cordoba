public class Asteroide extends GameObject implements IDisplayable, IMoveable{
   
  Asteroide(PVector posicion,PVector velocidad){
  this.posicion=posicion;
  this.velocidad=velocidad;
  }
  void display(){
    imagen=loadImage("asteroide.png");
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,90,90);
  }
  public void mover(){
    this.posicion.y+=velocidad.y;
    if(posicion.y>height+50){
      posicion.y=0;
      posicion.x=random(0,width);
    }
  }

}
