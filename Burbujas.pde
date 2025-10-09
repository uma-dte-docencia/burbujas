SistemaParticulas s; 

void settings()
{
  size(displayWidth, displayHeight);
}

void setup()
{
  float viscosidad = 0.01;
  s = new SistemaParticulas(new PVector(40, displayHeight/2), viscosidad);
} //<>//

void draw()
{
 background(128);
 if (mousePressed) { s.addParticula(); }
 s.run();
}
