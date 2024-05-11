public class Escenario extends GameObject{
    
 Escenario(PVector posicion){
    this.posicion=posicion;  
  }
  
  void display(){
    imagen=loadImage("escenario.png");
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,width,height);
  }
}
