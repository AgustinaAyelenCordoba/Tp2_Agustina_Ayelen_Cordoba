private Escenario escenario;
private Asteroide[] asteroide;
private Enemigo enemigo;
void setup(){
size(800,600);
  escenario =new Escenario(new PVector(width/2,height/2));
  asteroide=new Asteroide[4];
  for(int i=0; i<asteroide.length;i++){
     asteroide[i]=new Asteroide(new PVector(random(50,width),0),new PVector(width,random(15,30)));
  }
  enemigo=new Enemigo(new PVector(width/2,100),new PVector(random(15,30),0));
}

void draw(){
  escenario.display();
 for(int i=0; i< asteroide.length;i++){
     asteroide[i].display();
    asteroide [i].mover();
  } 
   enemigo.display();
  enemigo.mover();
  
}
