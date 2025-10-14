<img width="1208" height="705" alt="image" src="https://github.com/user-attachments/assets/a7316578-0b0b-4a12-a3e5-c955e7788317" />

# Burbujas

Este repositorio está hecho para jugar con el lenguaje [Processing](https://processing.org/). Haz tu propio fork y modifícalo como quieras. Se basa en los ejemplos de Daniel Shifmann sobre simulación que vienen con Processing (Examples>Topics>Simulate), pero utiliza Arduino y un circuito muy sencillo para que las burbujas se produzcan al soplar sobre un micrófono electret. 

- En el directorio raíz está el código Processing para representar las burbujas. 
- En el subdirectorio [Soplido](./soplido/) está el código de Arduino para captar el soplido por un micrófono electret. Está con la estructura para poder abrirlo en PlatformIO, pero si usas [Arduino IDE](https://www.arduino.cc/) copia el fichero [soplido.ino](./soplido/src/soplido.ino) a un directorio "soplido" y arráncalo desde ahí. Esquema del circuito para medir el soplido:

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
- Divisor de tensión con una resistencia de 100 kΩ (entre Vcc y el punto medio) y un micrófono electret (entre el punto medio y tierra, el negativo del micrófono a tierra).
- El punto medio del divisor está conectado al pin analógico A0 del Arduino.

## Documentación con PlantUML

También aprovechamos este repo para jugar con control de versiones y la automatización de parte de la documentación con la herramienta [PlantUML](https://plantuml.com/) (ver directorio [doc](./doc)). 




