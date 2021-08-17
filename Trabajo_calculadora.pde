int tam;
int cant=5;
int posy;
int [] numeros = new int [10];
String [] operaciones = new String [5];
int [] posY = new int [3];
int posXClicked;
int posYClicked;
int posXClicked2;
int [] cuenta= new int [2];
String oper;
boolean opertrue=false;
boolean igual=false;
int resultado;

void setup() {
  size(400, 400);
  textSize(30);
  textMode(CENTER);

  tam=height/cant;
  posy=160;

  numeros[0]=0;
  numeros[1]=1;
  numeros[2]=2;
  numeros[3]=3;
  numeros[4]=4;
  numeros[5]=5;
  numeros[6]=6;
  numeros[7]=7;
  numeros[8]=8;
  numeros[9]=9;

  operaciones[0]= "+";
  operaciones[1]= "-";
  operaciones[2]= "x";
  operaciones[3]= "%";
  operaciones[4]= "=";

  posY[0]= (tam/2)+250;
  posY[1]= (tam/2)+330;
  posY[2]= (tam/2)+170;
}

void draw() {
  background(240);

  for (int G=0; G<cant; G++) {
    for (int F=0; F<2; F++) {
      noFill();
      rect(G*tam, F*tam+240, tam, tam);

      /*fill(0);
       text(numeros[G+F*5], G*tam+30, (F*tam/2)+300);*/
    }
  }

  for (int G=0; G<cant; G++) {
    fill(0);
    text(numeros[G], G*tam+30, posY[0]);
  }

  for (int G=0; G<cant; G++) {
    fill(0);
    text(numeros[G+5], G*tam+30, posY[1]);
  }

  for (int H=0; H<cant; H++) {
    noFill();
    rect(H*tam, posy, tam, tam);

    text(operaciones[H], H*tam+30, posY[2]);
  }



  text(cuenta[0] + oper+ cuenta[1], 50, 80);
  text(resultado, 340, 80);

 
}

void mouseClicked() {

  posXClicked= round(map(mouseX, 0, width, 0, 4));

  posXClicked2= round(map(mouseX, 0, width-100, 0, 3));

  if (mouseY>(posY[0]-40) && mouseY< (posY[1]-40)) {
    posYClicked=0;
  } else if (mouseY>(posY[1]-40) && mouseY<height) {
    posYClicked=5;
  } 

  if (opertrue==false) {
    if (mouseY>(posY[0]-40) && mouseY< (posY[1]-40)|| mouseY>(posY[1]-40) && mouseY<height) {
      cuenta[0]=numeros[posXClicked+posYClicked];
    }
  }

  if (opertrue==true) {
    if (mouseY>(posY[0]-40) && mouseY< (posY[1]-40)|| mouseY>(posY[1]-40) && mouseY<height) {
      cuenta[1]=numeros[posXClicked+posYClicked];
    }
  }

  if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked==4) {
    igual=true;
  }

  if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked2<4) {
    opertrue=true;
    oper= operaciones[posXClicked2];
  }
  
  if (igual==true) { 
    if (oper==operaciones[0]) {
      resultado=cuenta[0]+cuenta[1];
      if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked==4) {
        opertrue=false;
        cuenta[0]=0;
        cuenta[1]=0;
        igual=false;
      }
    } else if (oper==operaciones[1]) {
      resultado=cuenta[0]-cuenta[1];
      if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked==4) {
        opertrue=false;
        cuenta[0]=0;
        cuenta[1]=0;
        igual=false;
      }
    } else if (oper==operaciones[2]) {
      resultado=cuenta[0]*cuenta[1];
      if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked==4) {
        opertrue=false;
        cuenta[0]=0;
        cuenta[1]=0;
        igual=false;
      }
    } else if (oper==operaciones[3]) {
      resultado=cuenta[0]%cuenta[1];
      if (mouseY>(posY[2]-40) && mouseY<(posY[0]-40) && posXClicked==4) {
        opertrue=false;
        cuenta[0]=0;
        cuenta[1]=0;
        igual=false;
      }
    }
  }
}
