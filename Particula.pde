class Particula {
  PVector posicion;
  PVector velocidad;
  Particula(PVector donde)
  {
    posicion = donde.copy();
    velocidad = new PVector(random(2,3), random(-1.0, 1));
  }
  
  void run()
  {
    update();
    render();
  }
  
  void update()
  {
    posicion.add(velocidad);
  }
  
  void render()
  {
   ellipseMode(CENTER);
   ellipse(posicion.x, posicion.y, 5, 5);
  }
}
