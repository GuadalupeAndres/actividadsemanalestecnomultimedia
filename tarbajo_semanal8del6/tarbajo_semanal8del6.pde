import ddf.minim.*;
Minim minim;
AudioPlayer sonidoexplosion;



int x;
int altorect=80;
int anchorect=100;
int direccion=1;
int velocidad=2;

boolean enemigo1visible=true;

int x2;
int altorect2=70;
int anchorect2=90;
int direccion2=1;
int velocidad2=7;

boolean enemigo2visible=true;

int x3=300;
int altorect3=60;
int anchorect3=80;
int direccion3=1;
int velocidad3=5;

boolean enemigo3visible=true;

int x4=300;
int altorect4=70;
int anchorect4=80;
int direccion4=1;
int velocidad4=8;

boolean enemigo4visible=true;

int X=200, altocanon=60, anchocanon=80;

boolean sedisparobala= false;
int xb, yb, tamb=20;

int pantalla=0;

int contador;

PImage atacante, enemigos1, enemigos2, enemigos3, enemigos4, explosion1, explosion2, explosion3, explosion4, bandera1, bandera2;

PFont fuente;

void setup() {
  size(400, 500);
  atacante=loadImage("barco.jpeg"); 
  enemigos1=loadImage("atacante1.jpeg");
  enemigos2=loadImage("atacante2.jpeg");
  enemigos3=loadImage("atacante3.jpeg"); 
  enemigos4=loadImage("atacante4.jpeg");
  explosion1=loadImage("explosion1.jpeg"); 
  explosion2=loadImage("explosion2.jpeg");
  explosion3=loadImage("explosion3.jpeg");
  explosion4=loadImage("explosion4.jpeg");
  bandera1=loadImage("pirata.png");
  bandera2=loadImage("bandera-pirata.png");
  fuente=loadFont("ARBERKLEY-48.vlw");
  minim= new Minim(this);
  sonidoexplosion= minim.loadFile("sonidoexplosion.mp3");

  yb=467;
}

void draw() {
  background(#225D81);
  if (pantalla==0) {
    image(bandera1,100,50,200,150);
    fill(0);
    textAlign(CENTER);
    textFont(fuente);
    textSize(35);
    text("¡Derriba a toda la flota!", 200, 350);

    textSize(25);
    text("Click para iniciar", 200, 450);
    contador=0;
    
    enemigo1visible=true;
    enemigo2visible=true;
    enemigo3visible=true;
    enemigo4visible=true;
    sedisparobala= false;
    
    yb=467;
    
    
  } else if (pantalla==1) {
    background(255);

    text("Navios derribados: "+contador, 100, 20);

    if (enemigo1visible==true) {
      image(enemigos1, x, 20, anchorect, altorect);


      if (x>=(width-anchorect)) {
        direccion=-1;
      }

      if (x<=0) {
        direccion=1;
      }

      x=x+(velocidad*direccion);
    }


    if (enemigo2visible==true) { 
      image(enemigos2, x2, 120, anchorect2, altorect2);

      if (x2>=(width-anchorect2)) {
        direccion2=-1;
      }

      if (x2<=0) {
        direccion2=1;
      }

      x2=x2+(velocidad2*direccion2);
    }



    if (enemigo3visible==true) { 
      image(enemigos3, x3, 220, anchorect3, altorect3);

      if (x3>=(width-anchorect3)) {
        direccion3=-1;
      }

      if (x3<=0) {
        direccion3=1;
      }

      x3=x3+(velocidad3*direccion3);
    }

    if (enemigo4visible==true) { 
      image(enemigos4, x4, 320, anchorect4, altorect4);

      if (x4>=(width-anchorect4)) {
        direccion4=-1;
      }

      if (x4<=0) {
        direccion4=1;
      }

      x4=x4+(velocidad4*direccion4);
    }

    image(atacante, X, height-altocanon, anchocanon, altocanon);


    if (sedisparobala==true) {

      fill(#555252);
      ellipse(xb, yb, tamb, tamb);
      yb=yb-4;
    }

    //colision con enemigos

    if (dist(xb, yb, x+anchorect/2, 20+altorect/2)<tamb*2) {
      contador++;
      image(explosion1, x, 20, altorect, anchorect);
      enemigo1visible=false;
      sedisparobala=false;

      sonidoexplosion.play();
      if (yb<=470) {
        x=700;
      }
    }

    if (dist(xb, yb, x2+anchorect2/2, 120+altorect2/2)<tamb*2) {
      contador++;
      enemigo2visible=false;
      sedisparobala=false;
      image(explosion2, x2, 120, altorect2, anchorect2);
      sonidoexplosion.play();
      if (yb<=470) {
        x2=700;
      }
    }

    if (dist(xb, yb, x3+anchorect3/2, 220+altorect3/2)<tamb*2) {
      contador++;
      enemigo3visible=false;
      sedisparobala=false;
      image(explosion3, x3, 220, altorect3, anchorect3);
      sonidoexplosion.play();
      if (yb<=470) {
        x3=700;
      }
    }

    if (dist(xb, yb, x4+anchorect4/2, 320+altorect4/2)<tamb*2) {
      contador++;
      enemigo4visible=false;
      sedisparobala=false;
      image(explosion4, x4, 320, altorect4, anchorect4);
      sonidoexplosion.play();
      if (yb<=470) {
        x4=700;
      }
    }

    if (enemigo1visible==false&&enemigo2visible==false&&enemigo3visible==false&&enemigo4visible==false) {
      pantalla=2;
    }
  } else if (pantalla==2) {
    background(#225D81);
    image(bandera2,100,50,200,150);
    fill(0);
    textSize(35);
    text("¡Ganaste!", 200, 250);

    textSize(25);
    text("Click para volver a inicio", 200, 350);
  }




  println(xb);
}


void keyPressed() {


  if (keyCode==LEFT) {
    X=X-5;
  }
  if (keyCode==RIGHT) {
    X=X+5;
  }


  if (keyCode==ENTER) {
    sedisparobala=true;
    yb=480;
    xb= X + (anchocanon/2);
    sonidoexplosion.rewind();
  }
}

void mouseClicked() {
  if (pantalla==0) {
    pantalla=1;
  }

  if (pantalla==2) {
    pantalla=0;
  }
}
