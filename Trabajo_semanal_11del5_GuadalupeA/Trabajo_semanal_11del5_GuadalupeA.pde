PFont fuente;
PImage odin1, odin2, odin3, odin4, odin5, odin6, odin7, odin8, odin9, odin10, odin11, odin12, odin13;
int text1;
int text2;
int text3;
int text4;
int text5;
int text6;
int text7;
int text8;
int text9;
int text10;
int text11;
int text12;
int text13;

int T1;
int T2;
int T3;
int T4;
int T5;
int T6;
int T7;
int T8;
int T9;
int T10;
int T11;
int T12;
int T13;

int I;
int Click;
int framespseg;


float pasar2;
float pasar1;


void setup(){
  size(400,300);
  fuente=loadFont("ARBONNIE-48.vlw");
  odin1= loadImage("odin1.png");
  odin2= loadImage("odin2.png");
  odin3= loadImage("odin3.png");
  odin4= loadImage("odin4.png");
  odin5= loadImage("odin5.png");
  odin6= loadImage("odin6.png");
  odin7= loadImage("odin7.png");
  odin8= loadImage("odin8.png");
  odin9= loadImage("odin9.png");
  odin10= loadImage("odin10.png");
  odin11= loadImage("odin11.png");
  odin12= loadImage("odin12.png");
  odin13= loadImage("odin13.png");
  text1=0;
  text2=0;
  text4=0;
  text5=300;
  text6=300;
 
  I=0;
}


void draw(){
  background(255);
  
  textFont(fuente, 25);
  pasar2= dist(350,250,mouseX,mouseY);
  pasar1= dist(50,250,mouseX,mouseY);
  
  framespseg= framespseg+1;
  
  if(framespseg==15){
    framespseg=0;
  }
  
  
 //imagen 1      
if(I==0){
  image(odin1,0,0,400,300);
T1=2;
fill(255);
}else{ text1=-1;}

 if(T1==2){
  text("Odín es el dios\nPadre de todos en\nla mitología Nórdica",200,text1);
  text1=text1+1;
}
  
  if(text1>=29){
    text1=text1-1;
  }
  
//imagen 2  
if(I==1){
  image(odin2,0,0,400,300);
  T2=2;
  
}else{ text2=-10;}  

if(T2==2){
  fill(0);
  text("Odin es el rey de Asgard",150,text2);
  text2=text2+2;
}else{noFill(); }

if(text2>=29){
  text2=text2-2;}



//imagen 3
if(I==2){
  image(odin3,0,0,400,300);
  T3=2;
}else{text3=-300;}


if(T3==2){
 fill(0);
  textSize(30);
  text("Cena en el Valhalla\ncon los caidos en batalla",text3,260); 
  noFill();
  text3=text3+5;
}

if(text3>=150){
  text3=text3-5;}
  
  
  

//imagen 4

if(I==3){
  image(odin4,0,0,400,300);
  T4=2;
}else{text4=-300;}

if(T4==2){
  textSize(25);
  text("Tiene un corcel llamado Sleipnir\nque tiene 8 patas",text4,260);
  text4=text4+5;
}

if(text4>=115){
  text4=text4-5;}
  
  
  

//imagen 5
if(I==4){
  image(odin5,0,0,400,300);
  T5=2;
}else{text5=350;}

if(T5==2){
  fill(255);
    text("Sale a cazar con otros dioses",90,text5);
  text5=text5-4;
}

if(text5<=260){
  text5=text5+4;}  







//imagen 6
if(I==5){
  image(odin6,0,0,400,300);
  T6=2;
}else{text6=340;}

if(T6==2){
 fill(0);
  text("Luchó contra Ymir",230,text6);
  text6=text6-4;
}

if(text6<=260){
  text6=text6+4;}  







//imagen 7
if(I==6){
  image(odin7,0,0,400,300);
  T7=2;
}else{text7=-200;}

if(T7==2){
  text("Con el cuerpo de Ymir\ncreó Midgard",text7, 100);
  text7=text7+4;
}

if(text7==200){
  text7=text7-4;
}



//imagen 8
if(I==7){
  image(odin8,0,0,400,300);
  T8=2;
}else{text8=500;}

if(T8==2){
  fill(255);
  text("Fué al pozo de Mimir\npara obtener sabiduría de sus aguas", text8,250);
  text8=text8-5;
}


if(text8==60){
  text8=text8+5;
}

//imagen 9
if(I==8){
  image(odin9,0,0,400,300);
  T9=2;
}else{text9=500;}

if(T9==2){
  text("Quizo conocer la magia de las runas\ny verlas",text9,250);
  text9=text9-5;
}

if(text9==70){
 text9=text9+5; 
}




//imagen 10
if(I==9){
  image(odin10,0,0,400,300);
  T10=2;
}else{text10=400;}

if(T10==2){
  text("Les pidió\na las nornas\nque se las\nmostraran.\nPasó varios\ndesafíos",270,text10);
  text10=text10-5;
}

if(text10==30){
  text10=text10+5;
}

//imagen 11
if(I==10){
  image(odin11,0,0,400,300);
  T11=2;
}else{text11=470;}

if(T11==2){
 fill(0);
 text("Consiguió una hidromiel para rimar bien",text11,50);
 text11=text11-5;
}

if(text11==20){
 text11=text11+5; 
}

//imagen 12

if(I==11){
  image(odin12,0,0,400,300);
  T12=2;
}else{text12=350;}

if(T12==2){
  fill(255);
  text("Loki se libera de\nsus cadenas\ny se desata\nel Ragnarok",270,text12);
  text12=text12-5;
}

if(text12==60){
 text12=text12+5; 
}



//imagen 13
if(I==12){
  image(odin13,0,0,400,300);
  T13=2;
}else{text13=-200;}

if(T13==2){
 fill(0);
 text("Muere deborado\nen el ragnarok,\npor el lobo Fenrir\nhijo de Loki",240,text13);
 text13=text13+5;
}

if(text13==90){
 text13=text13-5; 
}




if(I==13){
 I=0; 
}
if(I<=-1){
  I=12;
}
if(pasar1<=50 && (mousePressed) && (framespseg==5)){
  I=I-1;
}

if(pasar2<=50 && (mousePressed) && (framespseg==5)){
  I=I+1;
}

noFill();
  stroke(0);
  ellipse(350,250, 50,50);
ellipse(50,250,50,50);
  
  println(I);
 
  
}
