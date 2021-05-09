 PImage portadacontitulo;
 PImage portadasintitulo;
 PImage portadaoscuro;
 PImage nena;
 PImage nenessinfondo;
 PImage luz;
 PImage fuego;
 PImage edificio;
 PImage farol;
 PImage plantas;
 PImage nena2;
 PImage fondoborde;
 PImage luna;
 
 PFont titulo;
 PFont titulo2;
 int T2=1;
 int T=450;
 int nenaX=308;
 
 void setup(){
   size(600,400);
   portadacontitulo= loadImage("portada con titulo.jpeg");
   portadasintitulo= loadImage("portada sin titulo.jpeg");
   portadaoscuro= loadImage("portada oscuro.jpeg");
   nena= loadImage("nena 1.png");
   nenessinfondo= loadImage("nenes sin fondo.png");
   luz= loadImage("luz 2.jpeg");
   plantas=loadImage("plantas.png");
   fuego=loadImage("fuego.png");
   edificio=loadImage("edificio.jpeg");
   farol=loadImage("farol 1.jpeg");
   nena2=loadImage("nena 2.jpeg");
   fondoborde=loadImage("fondo borde.png");
   luna=loadImage("fondo con luna.png");
   
   titulo=loadFont("Harrington-48.vlw");
   titulo2=loadFont("ArialNarrow-48.vlw");
   
 }
 
 
 
 void draw(){
   
   image(portadacontitulo,0,0,300,400);
   image(portadasintitulo,300,0,300,400);
   
   
 
 

 
 if(mouseX==450){
   image(edificio,354,37,160,57);
 }else{
   image(portadasintitulo,300,0,300,400);
 }
 if(mouseY<=90){
   image(edificio,354,37,160,57);
 }else{
   image(portadasintitulo,300,0,300,400);
 }
 
 
   
 if(530<=mouseX){
   
 if(mouseY<=120){
 image(plantas,521,32,79,120);   
 }
 }
 
 if(mouseX<=336){
   if(mouseY<=128){
     image(farol,309,65,45,70);
     if(mousePressed){
       image(luz,303,0,295,400);
       image(farol,309,65,45,70);
      image(fuego,317,103,30,30); 
     }
   }
 }
 
 if(mouseX<=345){
   if(200<=mouseY){
     image(nena,307,190,76,155);
    if(mousePressed){
      nenaX=nenaX+1;
      image(portadaoscuro,300,0,300,400);
      image(nena,nenaX,190,76,155);
      image(fondoborde,300,0,300,400);
      image(nenessinfondo,369,216,195,186);
      if(nenaX==593){
        nenaX=308;
      }
   
    }
   }
 }
 
 
 if(415<=mouseX){
  if(280<=mouseY){ 
  if(mousePressed){
    image(luna,300,-14,300,415);
    fill(255);
    textFont(titulo,40);
    text("Un misterio\nen Tucumán",358,148);
    textFont(titulo2,10);
    text("LILIANA CINETTO",414,114);
  }
  } 
 }
 
 textFont(titulo,40);  
 T=T-2;
 fill(#3E0C01);
 text("Un misterio\nen Tucumán",358,T);
 
 if(T<148){
   T=T+2;
 }
 
 T2=T2+2;
 textFont(titulo2,10);
 text("LILIANA CINETTO",T2,114);
 if(T2>414){
   T2=T2-2;
 }
 
 
 }
