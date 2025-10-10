class SistemaParticulas {
  
  ArrayList<Particula> particulas; 
  PVector origin;
  float viscosidad;
 
  SistemaParticulas(PVector pos, float v) {
    particulas = new ArrayList<Particula>();
    origin = pos.copy();
    viscosidad = v;
  }
  
  void addParticula() {
    Particula p = new Particula(origin);
    particulas.add(p);
  }
  
  void addParticula(int n) {
    for(int i = 0; i < n; i++) {
      addParticula();
    }
  }   
    
  void run() {
    for(int i = 0;  i < particulas.size(); i++) {
      Particula p = particulas.get(i);
      p.aplicarViscosidad(viscosidad);
      p.run();
      if (p.isDead) {
        particulas.remove(i);
      }
    }
  }
}
