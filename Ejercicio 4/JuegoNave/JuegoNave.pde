private Escenario escenario;
private Asteroide[] asteroide;
void setup(){
size(800,600);
  escenario =new Escenario(new PVector(width/2,height/2));
  asteroide=new Asteroide[4];
  for(int i=0; i<asteroide.length;i++){
     asteroide[i]=new Asteroide(new PVector(random(50,width),0),new PVector(width,random(15,30)));
  }
}

void draw(){
  escenario.display();
 for(int i=0; i< asteroide.length;i++){
     asteroide[i].display();
    asteroide [i].mover();
  } 
}
