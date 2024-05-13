public class Rana{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;

  Rana(){
    
  }

public PVector getPosicion(){
  return this.posicion;
}
public void setPosicin(PVector pos){
  this.posicion=pos;
}

public PVector getvelocidad(){
  return this.velocidad;
}
public void setVelocidad(PVector vel){
  this.velocidad=vel;
}

void display(){
  imagen=loadImage("Rana.png");
  imageMode(CENTER);
  image(imagen,this.posicion.x,this.posicion.y,70,70);
}

public void movimiento(){
 if(key=='d'){
  this.posicion.x+=this.velocidad.x;
  }
   if(key=='a'){
  this.posicion.x-=this.velocidad.x;
  }
   if(key=='w'){
  this.posicion.y-=this.velocidad.y;
  }
  if(key=='s'){
  this.posicion.y+=this.velocidad.y;
  }
}
}
