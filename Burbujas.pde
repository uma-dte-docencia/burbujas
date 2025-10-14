import processing.serial.*;  //<>//
SistemaParticulas s; 
Serial arduino; 
float dato = 0;

void settings()
{
  size(displayWidth, displayHeight);
}

void setup()
{
  printArray(Serial.list());
  String portName = Serial.list()[0];
  arduino = new Serial(this, portName, 115200);
  arduino.bufferUntil('\n');

  float viscosidad = 0.02;
  s = new SistemaParticulas(new PVector(40, displayHeight/2), viscosidad);

}

void draw()
{
 background(128);
 if (mousePressed) { s.addParticula(); }
 if (dato > 100) { s.addParticula(5); }
 s.run();
}

void mousePressed()
{
  if (mouseButton == RIGHT) { looping = !looping; }
}

void serialEvent(Serial port) 
{
  String datoString = port.readString();
  dato = float(datoString.trim());
}
