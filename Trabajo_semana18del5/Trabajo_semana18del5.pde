PFont fuente;

int iniciar;
int ganar;
int perder;
int cuadradito;
int cuadraditox;
int avanzar=2, avanzar2=300, avanzar3=100;
int contador;
float destinox=180, destinoy=0;


void setup(){
  size(400,300);
 fuente=loadFont("CourierNewPS-BoldMT-48.vlw");
 
  iniciar=0;
  ganar=0;
  perder=0;
  cuadraditox=180;
  cuadradito=260;
}


void draw(){
  background(#FFF6E5);

  
  textFont(fuente,20);
  fill(0);
  text("Haz que el cuadrado\nllegue a sus destinos",80,80);
  fill(#82B418);
  text("Click para iniciar",80,160);
  fill(0);
  textSize(15);
  text("Mové y presioná el mouse\npara avanzar",20,230);
 
 
  
 //********INICIAR**********
  
 if(iniciar==2 && (ganar==0) && (perder==0)){
    background(#FFF2C1);
    fill(#82B418);
    text("Destinos:"+contador,30,50);
    fill(255,0,0);
    rect(cuadraditox,cuadradito,40,40);
    fill(#8B3703);
    rect(avanzar,200,100,40);
    rect(avanzar2,150,100,40);
    rect(avanzar3,90,100,40);
     avanzar++;
  avanzar2++;
  avanzar3++;
  if(avanzar==400){
    avanzar=1;
  }
  
  if(avanzar2==400){
    avanzar2=1;
  }
  
  if(avanzar3==400){
    avanzar3=1;
  }
    
    fill(0,200,0);
    rect(destinox,destinoy,40,20);
    
//******LLEGADAS******
    
    if(cuadradito==0){
      destinoy=280;
      contador++;  
    }
    
    if(cuadradito==280){
      destinoy=0;
      contador++;
    }
    
    if(contador==10&&iniciar==2){
  ganar=2;
}
    
    if(cuadradito<=240&&cuadradito>=200&&avanzar>=80&&avanzar<210){
      perder=2;
    }
    
     if(cuadradito<=190&&cuadradito>=150&&avanzar2>=80&&avanzar2<210){
      perder=2;
    }
    
     if(cuadradito<=130&&cuadradito>=90&&avanzar3>=80&&avanzar3<210){
      perder=2;
    }
    
 }

  
//********PERDER********

if(perder==2){
  background(0);
  textSize(40);
  fill(255,0,0);
  text("PERDISTE",90,150);
   textSize(15);
  text("Hacé click para volver a empezar",40,230);
  
  
}

  
//*******GANAR******
if(ganar==2&&iniciar==2){
  background(255);
  fill(#82B418);
  textSize(40);
  text("¡FELICIDADES!\nGanaste",60,150);
  textSize(15);
  text("Hacé click para volver a empezar",40,230);
  
}
println(avanzar);
}

void mouseClicked(){
iniciar=1;
  if(iniciar==1){
    iniciar=2;
  }
   if(perder==2){
   iniciar=0;
   ganar=0;
   perder=0;
   iniciar=0;
  cuadraditox=180;
  cuadradito=260;
    contador=0;
    
  }
  
  if(ganar==2){
   iniciar=0;
   ganar=0;
   perder=0;
   iniciar=0;
  cuadraditox=180;
  cuadradito=260;
   contador=0;
    
  }
  
}


void mouseDragged(){
  if (iniciar==2&&destinoy==0){
    cuadradito--;  
  }else if(destinox==180 && (destinoy==280)&&(iniciar==2)){
        cuadradito++;
  }
  
  
 
}
