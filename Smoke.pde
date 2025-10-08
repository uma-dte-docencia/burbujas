SistemaParticulas s; 
void setup()
{
  size(640,480);
  s = new SistemaParticulas(new PVector(40, 240));
  s.addParticula();
}

void draw()
{
 background(128);
 s.addParticula();  //<>//
 s.run();
}
