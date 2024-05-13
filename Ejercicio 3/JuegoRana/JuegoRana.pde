Rana rana;
Camino terreno;
Camino terreno1;
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
rana=new Rana();
rana.setPosicin(new PVector(width/2,height-19));
rana.setVelocidad(new PVector(20,26));
}


void draw(){
  background(255);
terreno.display();
terreno1.display();
rana.display();
}

void keyPressed(){
  rana.movimiento();
}
