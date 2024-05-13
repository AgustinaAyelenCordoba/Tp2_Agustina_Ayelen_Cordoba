class SpawnerVehiculos{
  private Vehiculo[] vehiculo;
  
    public SpawnerVehiculos(){
      vehiculo = new Vehiculo[6]; 
     }
     
     public void generarVehiculo(Plataforma plataforma){
       vehiculo[0]=new Vehiculo(new PVector(plataforma.getPosicion().x,plataforma.getPosicion().y-50),new PVector(int(random(3,8)),0));
       vehiculo[1]=new Vehiculo(new PVector(plataforma.getPosicion().x,plataforma.getPosicion().y-100),new PVector(int(random(3,8)),0));
       vehiculo[3]=new Vehiculo(new PVector(plataforma.getPosicion().x,plataforma.getPosicion().y-150),new PVector(int(random(3,8)),0));
       vehiculo[4]=new Vehiculo(new PVector(plataforma.getPosicion().x,plataforma.getPosicion().y-200),new PVector(int(random(3,8)),0));
       vehiculo[5]=new Vehiculo(new PVector(plataforma.getPosicion().x,plataforma.getPosicion().y-250),new PVector(int(random(3,8)),0));
   }
     
   public void mostrarVehiculo(){
     for(Vehiculo m:vehiculo){
       if(m !=null){
         m.display();
         m.movimiento();
       }
     }
   }
   
  }
