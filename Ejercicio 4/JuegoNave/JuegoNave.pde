private Escenario escenario;

void setup(){
size(800,600);
  escenario =new Escenario(new PVector(width/2,height/2));
}

void draw(){
  escenario.display();
}
