class Nave implements IDisplayable,IControler{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  private ArrayList<Bala> balas;
Nave(){
  balas = new ArrayList<Bala>();
}

void disparar() {
    balas.add(new Bala(new PVector(this.posicion.x,this.posicion.y),new PVector(0,30)));
  }
  void mostrarBalas() {
    for (int i = balas.size()-1; i > 0; i--) {
      Bala b = balas.get(i);
      b.mostrarBala();
      b.movimiento();
      if (b.posicion.y < 0) {
        balas.remove(i);
      }
    }
  }
void display(){
imagen=loadImage("nave.png");
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,150,150);
  }
  public void setPosicion(PVector pos){
    this.posicion=pos;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setVelocidad(PVector vel){
    this.velocidad=vel;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  void readCommand(){
    if(key=='a' || key=='A'){
      this.posicion.x-=this.velocidad.x;
    }
    if(key=='d' || key=='D'){
      this.posicion.x+=this.velocidad.x;
    }
    if(key=='w' || key=='W'){
      this.posicion.y-=this.velocidad.y;
    }
    if(key=='s' || key=='S'){
      this.posicion.y+=this.velocidad.x;
    }
  }

  }
