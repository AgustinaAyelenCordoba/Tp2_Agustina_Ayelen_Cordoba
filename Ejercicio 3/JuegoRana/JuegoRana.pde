Rana rana;
Camino terreno;
Camino terreno1;
Plataforma plataforma;
Plataforma[] plataforma1;
SpawnerVehiculos[] auto;//2
void setup(){
 size(800,600);
terreno=new Camino(new PVector(width/2,height-150));
terreno.setAlto(220);
terreno.setAncho(width);
terreno.setColorC(#080000);
terreno1=new Camino(new PVector(width/2,height-450));
terreno1.setAlto(220);
terreno1.setAncho(width);
terreno1.setColorC(#29D6FF); 
plataforma=new Plataforma(new PVector(width,height));
plataforma1=new Plataforma[4];
plataforma1[0]=new Plataforma(new PVector(width/2,height-360),new PVector(5,5),30,30);
plataforma1[1]=new Plataforma(new PVector(width/2,height-420),new PVector(7,5),30,30);
plataforma1[2]=new Plataforma(new PVector(width/2,height-480),new PVector(8,5),30,30);
plataforma1[3]=new Plataforma(new PVector(width/2,height-540),new PVector(10,5),30,30);
auto=new SpawnerVehiculos[1];
rana=new Rana();
rana.setPosicin(new PVector(width/2,height-19));
rana.setVelocidad(new PVector(20,26));
for(int i=0; i<auto.length; i++){
  auto[i]=new SpawnerVehiculos();
  auto[i].generarVehiculo(plataforma);
  }
}


void draw(){
  background(255);
terreno.display();
terreno1.display();
for(int i=0; i<auto.length; i++){
  auto[i].mostrarVehiculo();
}
for(int i=0; i<plataforma1.length; i++){
  plataforma1[i].display();
  plataforma1[i].movimiento();
}
rana.display();
}

void keyPressed(){
  rana.movimiento();
}
