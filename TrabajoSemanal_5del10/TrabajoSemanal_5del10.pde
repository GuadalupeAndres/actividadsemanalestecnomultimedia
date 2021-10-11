Control control;

void setup() {
  size(400, 400);
  control= new Control();
}

void draw(){
  background(240);
  control.dibujar();
}

void keyPressed(){
  control.teclaPresionada();
}

void mouseClicked(){
  control.mousePresionado();
}
