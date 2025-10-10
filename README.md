# Burbujas

Repo para jugar con el lenguaje [Processing](https://processing.org/), control de versiones, [PlatformIO](https://platformio.org/) y [PlantUML](https://plantuml.com/).

En el directorio principal [Burbujas](.) está el código Processing para representar las burbujas. 

En el subdirectorio [Soplido](./soplido/) está el código de Arduino para captar el soplido por un micrófono electret. Está con la estructura para poder abrirlo en PlatformIO, pero si usas [Arduino IDE](https://www.arduino.cc/) copia el fichero [soplido.ino](./soplido/src/soplido.ino) a un directorio "soplido" y arráncalo desde ahí. 

Esquema del circuito para medir el soplido:

```
          Vcc
           |
          100k
           |
           +-----> A0 (Arduino)
           |
        (Mic Electret)
           |
          GND
```

Descripción:
- Resistencia superior: 100 kΩ (entre Vcc y el punto medio).
- Parte inferior: micrófono electret conectado entre el punto medio y GND.
- El punto medio del divisor está conectado al pin analógico A0 del Arduino.



