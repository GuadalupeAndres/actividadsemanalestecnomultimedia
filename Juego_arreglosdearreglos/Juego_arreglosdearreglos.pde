

int cant=20;
int tamx;
int tamy;

int col1, fila1=0;
int col2, fila2 =4;
int [] [] arregarreg= new int [cant] [cant];


void setup() {
  size(400, 400);
  tamx=width/cant;
  tamy=height/cant;

  for (int col=0; col<cant; col++) {
    for (int fila=0; fila<cant; fila++) {
      arregarreg[col] [fila]=0;
    }
  }

  for (int col=0; col<cant; col++) {
    for (int fila=0; fila<cant; fila++) {
      if (random(100)>90) {

        arregarreg[col] [fila]=2;
      }
    }
  }

  for (int col=0; col<cant; col++) {
    for (int fila=0; fila<cant; fila++) {
      if (random(100)>90) {

        arregarreg[col] [fila]=3;
      }
    }
  }

  for (int col=0; col<cant; col++) {
    for (int fila=0; fila<cant; fila++) {
      if (fila2==arregarreg[col] [fila]) {

        arregarreg[col] [fila]=4;
      }
    }
  }
}

void draw() {
  background(240);

  for (int col=0; col<cant; col++) {
    for (int fila=0; fila<cant; fila++) {
      if (arregarreg[col][fila]==1) {
        fill(#CB1C08);
      } else if (arregarreg[col][fila]==2) {
        fill(#759B05);
      } else if (arregarreg[col][fila]==3) {
        fill(#864C05);
      } else if (arregarreg[col][fila]==4) {
        fill(#F7A116);
      } else {
        fill(#FFFAD1);
      }

      noStroke();
      rect(col *tamx, fila*tamy, tamx, tamy);
      /*fill(0);
       text( arregarreg[col][fila], col*tamx+tamx/3, fila*tamy+tamy/2);*/
    }
  }

  for (int i=0; i<cant; i++) {
       fill(#864C05);
       rect(i*tamx, 0, tamx, tamy);
       rect(width-tamx, i*tamy, tamx, tamy);
       rect(0, i*tamy, tamx, tamy);
       rect(i*tamx, height-tamy, tamx, tamy);
  }
}


void keyPressed() {
  if (keyCode==RIGHT) {
    if (arregarreg[col1+1][fila1]!=3 && col1+1 <cant-1 ) {
      arregarreg[col1][fila1]=0;
      arregarreg[col1+1][fila1]=1;
      col1=col1+1;
    }
  } else if (keyCode==DOWN) {
    if (arregarreg[col1][fila1+1]!=3&& fila1+1 <cant-1) {
      arregarreg[col1][fila1]=0;
      arregarreg[col1][fila1+1]=1;
      fila1=fila1+1;
    }
  } else if (keyCode==UP) {
    if (arregarreg[col1][fila1-1]!=3&& fila1-1 >0) {
      arregarreg[col1][fila1]=0;
      arregarreg[col1][fila1-1]=1;
      fila1=fila1-1;
    }
  } else if (keyCode==LEFT) {
    if (arregarreg[col1-1][fila1]!=3&& col1-1 >0) {
      arregarreg[col1][fila1]=0;
      arregarreg[col1-1][fila1]=1;
      col1=col1-1;
    }
  }





  if (keyCode=='D') {
    if (arregarreg[col2+1][fila2]!=3 && col2+1 <cant-1 ) {
      arregarreg[col2][fila2]=0;
      arregarreg[col2+1][fila2]=4;
      col2=col2+1;
    }
  } else if (keyCode=='S') {
    if (arregarreg[col2][fila2+1]!=3&& fila2+1 <cant-1) {
      arregarreg[col2][fila2]=0;
      arregarreg[col2][fila2+1]=4;
      fila2=fila2+1;
    }
  } else if (keyCode=='W') {
    if (arregarreg[col2][fila2-1]!=3&& fila2-1 >0) {
      arregarreg[col2][fila2]=0;
      arregarreg[col2][fila2-1]=4;
      fila2=fila2-1;
    }
  } else if (keyCode=='A') {
    if (arregarreg[col2-1][fila2]!=3&& col2-1 >0) {
      arregarreg[col2][fila2]=0;
      arregarreg[col2-1][fila2]=4;
      col2=col2-1;
    }
  }

  /*int col= floor(map(mouseX,0, width, 0, cant));
   int fila= floor(map(mouseY,0, height, 0, cant));
   
   arregarreg[col][fila]=1;*/
}
