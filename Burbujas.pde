import processing.serial.*;  //<>//
SistemaParticulas s; 
Serial arduino; 
float dato = 0;

void settings()
{
  size(displayWidth, displayHeight);
  printArray(Serial.list());
  String portName = Serial.list()[2];
  arduino = new Serial(this, portName, 115200);
  arduino.bufferUntil('\n');
}

void setup()
{
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

void serialEvent(Serial puertoserie) {
  String datoString = puertoserie.readString();
  //println(datoString);
  dato = float(datoString.trim());
}
