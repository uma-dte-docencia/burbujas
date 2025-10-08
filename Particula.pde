class Particula {
  PVector posicion;
  PVector velocidad;
  PVector aceleracion;
  float tamanio;
  Particula(PVector donde)
  {
    posicion = donde.copy();
    velocidad = new PVector(random(2,3), random(-1.0, 1));
    aceleracion = new PVector(0,0);
    tamanio = random(20,35);
  }
  
  void run()
  {
    update();
    render();
  }
  
  void update()
  {
    velocidad.add(aceleracion);
    posicion.add(velocidad);
  }
  
  void render()
  {
   ellipseMode(CENTER);
   ellipse(posicion.x, posicion.y, tamanio, tamanio);
  }
}
