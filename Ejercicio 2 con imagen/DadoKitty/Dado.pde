public class Dado extends GameObjetc{
  private int numero;
  PImage imagen;
  public Dado(PVector posicion){
    this.posicion=posicion;
  }
  public int getNumero(){
    return this.numero;
  }
  
  public void setNumero(int num){
    this.numero=num;
  }
   public void display(){
    switch(numero){
      case 1:
        imagen=loadImage("1.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
         break;
      case 2:
        imagen=loadImage("2.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
        break;
      case 3:
      imagen=loadImage("3.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
       break;
      case 4:
      imagen=loadImage("4.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
        break;
      case 5:
        imagen=loadImage("5.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
       break;
      case 6:
        imagen=loadImage("6.png");
        imageMode(CENTER);
        image(imagen,this.posicion.x,this.posicion.y,100,100);
       break;
    }
  }
}
