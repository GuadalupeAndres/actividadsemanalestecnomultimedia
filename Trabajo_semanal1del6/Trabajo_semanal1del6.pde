import processing.sound.*;

SoundFile error, acierto;

PFont fuente;
PImage fondo, fondo2, fondo3;

int pantalla;
float y1, y2, y3, y4, y5, y6, y7, y8, nivel, velocidad;


void setup(){
  size(400,400);
  
  fuente=loadFont("ARJULIAN-48.vlw");
  error=new SoundFile(this,"error.wav");
  acierto=new SoundFile(this,"acierto.wav");
  fondo=loadImage("fondo.jpg");
  fondo2=loadImage("fondo2.jpg");
  fondo3=loadImage("fondo3.jpg");
  pantalla=0;
  velocidad=2;
  
  y1=round(random(600,400));
  y2=round(random(750,380));
  y3=round(random(820,390));
  y4=round(random(500,380));
  
  y5=round(random(900,790));
  y6=round(random(800,740));
  y7=round(random(900,830));
  y8=round(random(750,490));
  
}

void draw(){
  background(0);
  
  
  if (pantalla==0){
    background(#6B4576);
    fill(#F2DAE7);
  textFont(fuente,35);
  textAlign(CENTER);
  text("¡Bienvenido!",200,100);
  textSize(25);
  text("Utilizá las flechas del\nteclado para jugar",200,200);
  
  rectMode(CENTER);
  rect(200,300, 150,60);
  fill(#4B2A50);
  text("Seleccionar\nnivel", 200, 302);
  
  } else if(pantalla==1){
     background(#6B4576);
    fill(#F2DAE7);
  textFont(fuente,35);
  textAlign(CENTER);
  text("Elegí un nivel",200,50);
  
  textSize(25);
  rectMode(CENTER);
  rect(100,100, 150,40);
  fill(#4B2A50);
  text("Nivel 1", 100, 106);
  
  fill(#F2DAE7);
   rect(100,180, 150,40);
  fill(#4B2A50);
  text("Nivel 2", 100, 186); 
  
  noStroke();
  fill(#F2DAE7);
   rect(100,260, 150,40);
  fill(#4B2A50);
  text("Nivel 3", 100, 266); 
  
    
  }else if(pantalla==2){
    image(fondo,0,0,400,400);
    y1=y1-velocidad;
    y2=y2-velocidad;
    y3=y3-velocidad;
    y4=y4-velocidad;
    y5=y5-velocidad;
    y6=y6-velocidad;
    y7=y7-velocidad;
    y8=y8-velocidad;
    
    fill(#4B374D);
    rect(100,60,45,45);
    rect(300,60,45,45);
    ellipse(170,60,50,50);
    ellipse(235,60,50,50);
    
   
    fill(#DBBCD8);
    rect(20,210,20,100);
    
    fill(#3BB776);
    rect(20,210,20,nivel);
    
    
    fill(#49F2E8);
    rect(100,y1,35,35);
    
    rect(300,y2,35,35);
    
    ellipse(170,y3,40,40);
    
    ellipse(235,y4,40,40);
    
    ellipse(100,y5,40,40);
    ellipse(300,y6,40,40);
    rect(170,y7,35,35);
    rect(235,y8,35,35);
    
    
    if(nivel>=100){
      pantalla=3;
    }
  
     fill(#FFE0E8);
    text("Nivel 1",50,20);
    
    text("Atrás",350,380);
    
  }else if(pantalla==3){
    background(#6B4576);
    fill(#F2DAE7);
  textFont(fuente,45);
  textAlign(CENTER);
  text("¡Nivel\nCompletado!",200,100);
  
   fill(#CFE5B7);
  rect(200,260,150,40);
  rect(200,340,150,40);
  
  fill(#72538B);
  textSize(20);
  text("Siguiente nivel",200,260);
  text("Volver a inicio",200,340);
  
   y1=round(random(600,400));
  y2=round(random(750,380));
  y3=round(random(820,390));
  y4=round(random(500,380));
  
  y5=round(random(900,790));
  y6=round(random(800,740));
  y7=round(random(900,830));
  y8=round(random(750,490));
   nivel=0;
 
    
  }else if(pantalla==4){
      image(fondo2,0,0,400,400);
    y1=y1-velocidad;
    y2=y2-velocidad;
    y3=y3-velocidad;
    y4=y4-velocidad;
    y5=y5-velocidad;
    y6=y6-velocidad;
    y7=y7-velocidad;
    y8=y8-velocidad;
    
    velocidad=4;
    
    fill(#4B374D);
    rect(100,60,45,45);
    rect(300,60,45,45);
    ellipse(170,60,50,50);
    ellipse(235,60,50,50);
    
   
    fill(#DBBCD8);
    rect(20,210,20,150);
    
    fill(#3BB776);
    rect(20,210,20,nivel);
    
    
    fill(#49F2E8);
    rect(100,y1,35,35);
    
    rect(300,y2,35,35);
    
    ellipse(170,y3,40,40);
    
    ellipse(235,y4,40,40);
    
    ellipse(100,y5,40,40);
    ellipse(300,y6,40,40);
    rect(170,y7,35,35);
    rect(235,y8,35,35);
    
    
    if(nivel>=100){
      pantalla=5;
    }
    
       fill(#FFE0E8);
    text("Nivel 2",50,20);
    
    text("Atrás",350,380);
    
  }else if(pantalla==5){
    background(#6B4576);
    fill(#F2DAE7);
  textFont(fuente,45);
  textAlign(CENTER);
  text("¡Nivel\nCompletado!",200,100);
  
   fill(#CFE5B7);
  rect(200,260,150,40);
  rect(200,340,150,40);
  
  fill(#72538B);
  textSize(20);
  text("Siguiente nivel",200,260);
  text("Volver a inicio",200,340);
  
   y1=round(random(600,400));
  y2=round(random(750,380));
  y3=round(random(820,390));
  y4=round(random(500,380));
  
  y5=round(random(900,790));
  y6=round(random(800,740));
  y7=round(random(900,830));
  y8=round(random(750,490));
    
  }else if(pantalla==6){
         image(fondo3,0,0,400,400);
    y1=y1-velocidad;
    y2=y2-velocidad;
    y3=y3-velocidad;
    y4=y4-velocidad;
    y5=y5-velocidad;
    y6=y6-velocidad;
    y7=y7-velocidad;
    y8=y8-velocidad;
    
    velocidad=5;
    
    fill(#4B374D);
    rect(100,60,45,45);
    rect(300,60,45,45);
    ellipse(170,60,50,50);
    ellipse(235,60,50,50);
    
   
    fill(#DBBCD8);
    rect(20,210,20,300);
    
    fill(#3BB776);
    rect(20,210,20,nivel);
    
    
    fill(#49F2E8);
    rect(100,y1,35,35);
    
    rect(300,y2,35,35);
    
    ellipse(170,y3,40,40);
    
    ellipse(235,y4,40,40);
    
    ellipse(100,y5,40,40);
    ellipse(300,y6,40,40);
    rect(170,y7,35,35);
    rect(235,y8,35,35);
    
    
    if(nivel>=100){
      pantalla=7;
    }
    
    fill(#FFE0E8);
    text("Nivel 3",50,20);
    
    text("Atrás",350,380);
    
  } else if(pantalla==7){
    background(#6B4576);
    fill(#F2DAE7);
  textFont(fuente,45);
  textAlign(CENTER);
  text("¡Nivel\nCompletado!",200,100);
  
   fill(#CFE5B7);
  rect(200,260,150,40);
  rect(200,340,150,40);
  
  fill(#72538B);
  textSize(20);
  text("Volver a inicio",200,340);
  
   y1=round(random(600,400));
  y2=round(random(750,380));
  y3=round(random(820,390));
  y4=round(random(500,380));
  
  y5=round(random(900,790));
  y6=round(random(800,740));
  y7=round(random(900,830));
  y8=round(random(750,490));
  }
  
  
  
  
  if(y1<=45){
     y1=round(random(600,400));
  }
  
  if(y2<=45){
     y2=round(random(750,380));
  }
 
  if(y3<=45){
    y3=round(random(820,390));
  }
  
  if(y4<=45){
     y4=round(random(500,380));
  }
  
  if(y5<=45){
   y5=round(random(900,790));
  } 
  
  if(y6<=45){
   y6=round(random(800,740));
  } 
  
  if(y7<=45){
   y7=round(random(900,830));
  }

  if(nivel<=-1){
    nivel=0;
    
  }
  
}

void mouseClicked(){
  
  if(dist(200,300,mouseX,mouseY)<=10){
    pantalla=1;
  }
  
  if(dist(100,100,mouseX,mouseY)<=15){
    pantalla=2;
  }else if(dist(100,180,mouseX,mouseY)<=15){
    pantalla=4;
  }else if(dist(100,260,mouseX,mouseY)<=15){
    pantalla=6;
  }
 
  
  if(pantalla==3&&dist(mouseX,mouseY,200,260)<=15){
    pantalla=4;
  }else if(pantalla==3&&dist(mouseX,mouseY,200,340)<=20){
    pantalla=1;
  }
  
    if(pantalla==5&&dist(mouseX,mouseY,200,260)<=20){
    pantalla=6;
  }else if(pantalla==5&&dist(mouseX,mouseY,200,340)<=20){
    pantalla=1;
  }
  
 if(pantalla==7&&dist(mouseX,mouseY,200,340)<=20){
    pantalla=1;
  }
  
  if(dist(mouseX,mouseY,350,380)<=15){
    pantalla=1;    
  }
}

void keyPressed(){
  
  if(keyCode==RIGHT){
    if(dist(300,y2,300,60)<=16){
      nivel=nivel+3;
      acierto.play();
    }else{ error.play();
    nivel=nivel-2;
    }
  }
 
   if(keyCode==LEFT){
    if(dist(100,y1,100,60)<=16){
      nivel=nivel+3;
      acierto.play();
    }else{ error.play();
    nivel=nivel-2;
    }
  }
  
 
    if(keyCode==UP){
    if(dist(170,y3,170,60)<=16){
      nivel=nivel+3;
      acierto.play();
    }else{ error.play();
    nivel=nivel-2;
    }
  }
  
    if(keyCode==DOWN){
    if(dist(235,y4,235,60)<=16){
      nivel=nivel+3;
      acierto.play();
    }else{ error.play();
    nivel=nivel-2;
    }
  }
  
  
  
}
