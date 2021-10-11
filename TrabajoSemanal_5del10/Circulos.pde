class Circulos {
  int posy;
  int posx;
  int tam;
  color colorcirculo;
  boolean seleccionar;

  Circulos() {
    this.posx= round(random(50, width-100));
    this.posy= round(random(50, width-100));
    this.tam=40;
    this.seleccionar=false;
    colorcirculo=round(random(100, 200));
  }

  /*Circulos(int _posx, int _posy){
   this.posx=_posx;
   this.posy=_posy;
   this.seleccionar=false;
   }*/

  void dibujar() {
    fill(colorcirculo);
    ellipse(this.posx, this.posy, this.tam, this.tam);
  }

  void crecer() {
    this.tam+=2;
  }

  void decrecer() {
    this.tam-=2;
  }

  void teclaPresionada() {
    if (keyCode == LEFT) {
      this.decrecer();
    } else if (keyCode == RIGHT) {
      this.crecer();
    }
  }

  void seleccionarCirulo() {
    this.seleccionar=true;
  }

  void deseleccionarCirulo() {
    this.seleccionar=false;
  }

  boolean estaseleccionado() {
    return seleccionar==true;
  }

  float mousetoco() {
    return (dist(this.posx, this.posy, mouseX, mouseY));
  }
}
