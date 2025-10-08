class SistemaParticulas {
  
  ArrayList<Particula> particulas; 
  PVector origin;
 
  SistemaParticulas(PVector pos) {
    particulas = new ArrayList<Particula>();
    origin = pos.copy();
  }
  
  void addParticula() {
    Particula p = new Particula(origin);
    particulas.add(p);
  }
  
  void run() {
    for(Particula p: particulas) {
      p.run();
    }
  }
}
