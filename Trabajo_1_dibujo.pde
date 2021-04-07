void setup() {
  size(600,600);
  background(180);
  strokeWeight(9);
 line(0,0,600,0); 
 line(0,0,0,600);
 line(600,600,0,600);
 line(600,600,600,0);
 fill(0);
 textSize(22);
 text("Esto es un cuadrado verde:",20,150);
 text("Esto es una elipse azul:",20,450);
 strokeWeight(2);
 fill(0,255,0);
 rect(325,25,220,220);
 fill(0,0,255);
 ellipse(425,450,200,200);
}
