public class Plataforma extends GameObject{
  int alto;
  int ancho;
  PImage imagen;
  Plataforma(PVector posicion){
    this.posicion=posicion;
  }
  Plataforma(PVector posicion,PVector velo,int alto,int ancho){
    this.posicion=posicion;
    this.velocidad=velo;
    this.alto=alto;
    this.ancho=ancho;
  }
  
  void display(){
   imagen=loadImage("3.png");
  imageMode(CENTER);
  image(imagen,this.posicion.x,this.posicion.y,50,50);
  }
  void movimiento(){
    this.posicion.x-=this.velocidad.x;
    if(this.posicion.x<0){
      this.posicion.x=width;
      
    }
  }
}
