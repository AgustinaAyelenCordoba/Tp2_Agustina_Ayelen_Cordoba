public class Enemigo extends GameObject implements IDisplayable, IMoveable{
  
  Enemigo(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
  }
  void display(){
  imagen=loadImage("enemigo.png");
  imageMode(CENTER);
  image(imagen,this.posicion.x,this.posicion.y,150,150);
}
  void mover(){
    this.posicion.x+=this.velocidad.x;
    if(this.posicion.x<20|| this.posicion.x>width-10){
      this.velocidad.x*=-1;
    }
  }
  
}
