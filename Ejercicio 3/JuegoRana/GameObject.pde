public abstract class GameObject{
  protected PVector posicion;
  protected PVector velocidad;
  
  public void setPosicion(PVector posicion){
  this.posicion=posicion;
  }
  public PVector getPosicion(){
  return this.posicion;
  }
  abstract void display();
}
