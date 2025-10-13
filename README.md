# Burbujas

Este repositorio está hecho para jugar con el lenguaje [Processing](https://processing.org/). Haz tu propio fork y modifícalo como quieras. Se basa en los ejemplos de Daniel Shifmann sobre simulación que vienen con Processing (Examples>Topics>Simulate).  

También aprovechamos este repo para jugar con control de versiones, Arduino y [PlatformIO](https://platformio.org/) y [PlantUML](https://plantuml.com/).

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
- Divisor de tensión con una resistencia de 100 kΩ (entre Vcc y el punto medio) y un micrófono electret conectado entre el punto medio y tierra, con el negativo del micrófono a tierra.
- El punto medio del divisor está conectado al pin analógico A0 del Arduino.

## Documentación automática con PlantUML

El siguiente diagrama muestra las clases utilizadas en la parte de Processing y sus relaciones. Gracias a los scripts que hay en [scripts](./scripts) y en [.githooks](./.githooks), si se hace algún cambio al código .pde, al hacer commit de dichos cambios automáticamente se actualiza el siguiente diagrama. Los diagramas están hechos con la herramienta [PlantUML]((https://plantuml.com/)): 

![Diagrama de Clases](./doc/classes_processing.png)



