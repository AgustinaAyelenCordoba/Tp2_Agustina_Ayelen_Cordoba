public class Bala extends GameObject{

  Bala(PVector pos,PVector vel){
    this.posicion=pos;
    this.velocidad=vel;
  }
 void mostrarBala(){
    fill(#E367CE);
    circle(this.posicion.x,this.posicion.y,10); 
}
 void movimiento(){
    this.posicion.y-=this.velocidad.y;
  }
}
