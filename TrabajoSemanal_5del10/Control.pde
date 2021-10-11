class Control {
  Circulos [] circulo;
  int cant=10;

  Control() {
    this.circulo= new Circulos[this.cant];
    for (int g=0; g<this.cant; g++) {
      this.circulo[g]=new Circulos();
    }
  }

  void dibujar() {
    for (int g=0; g<this.cant; g++) { 
      this.circulo[g].dibujar();
    }
  }

  void teclaPresionada() {
    for (int g=0; g<this.cant; g++) {
      if (this.circulo[g].estaseleccionado()) {
        this.circulo[g].teclaPresionada();
      }
    }
  }

  void mousePresionado() {
    for (int g=0; g<this.cant; g++) {
      if (this.circulo[g].mousetoco()<=20) {
        this.circulo[g].seleccionarCirulo();
      } else {
        this.circulo[g].deseleccionarCirulo();
      }
    }
  }
}
