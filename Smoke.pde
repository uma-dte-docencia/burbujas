SistemaParticulas s; 
void setup()
{
  size(640,480);
  s = new SistemaParticulas(new PVector(40, 240));
}

void draw()
{
 background(128);
 if (mousePressed) { s.addParticula(); }
 s.run(); //<>//
}
