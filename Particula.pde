class Particula {
  PVector posicion;
  PVector velocidad;
  float tamanio;
  Particula(PVector donde)
  {
    posicion = donde.copy();
    velocidad = new PVector(random(2,3), random(-1.0, 1));
    tamanio = random(20,35);
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
   ellipse(posicion.x, posicion.y, tamanio, tamanio);
  }
}
