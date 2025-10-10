#!/bin/bash
# Script para generar el archivo PlantUML a partir de los archivos .pde

PLANTUML_FILE="doc/classes_diagram.puml"

# Encabezado del archivo PlantUML
echo "@startuml classes_processing" > "$PLANTUML_FILE"
echo "" >> "$PLANTUML_FILE"
echo "' Declaración de las clases en Processing" >> "$PLANTUML_FILE"

# Procesar cada archivo .pde y extraer clases y métodos
for FILE in *.pde; do 
    CLASS_NAME=$(basename "$FILE" .pde)
    echo "class $CLASS_NAME {" >> "$PLANTUML_FILE"

    # Extraer métodos públicos del archivo
    grep -E "^\s*(public|void)\s+\w+\s*\(" "$FILE" | while read -r LINE; do
        METHOD_NAME=$(echo "$LINE" | sed -E 's/^\s*(public|void)\s+([a-zA-Z0-9_]+)\s*\(.*/\2()/')
        echo "    +$METHOD_NAME" >> "$PLANTUML_FILE"
    done

    echo "}" >> "$PLANTUML_FILE"
    echo "" >> "$PLANTUML_FILE"
done

# Relaciones entre clases (puedes personalizar esta sección)
echo "' Relaciones entre las clases" >> "$PLANTUML_FILE"
# echo "Burbujas --> SistemaParticulas : usa" >> "$PLANTUML_FILE"
echo "SistemaParticulas --> Particula : contiene" >> "$PLANTUML_FILE"

echo "" >> "$PLANTUML_FILE"
echo "@enduml" >> "$PLANTUML_FILE"

# Mensaje de éxito
echo "Archivo PlantUML generado en $PLANTUML_FILE"