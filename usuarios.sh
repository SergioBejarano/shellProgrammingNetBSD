#!/bin/sh
# Limpia la pantalla
clear

# Archivo de salida
output_file="usuarios.txt"

# Extraer nombres de usuario y descripciones del archivo /etc/passwd
echo "Nombres de usuario y descripciones:" > "$output_file"
cut -d: -f1,5 /etc/passwd >> "$output_file"

# Imprime el contenido del archivo de salida
echo "Se han guardado los nombres de usuario y descripciones en '$output_file'."
#cat "$output_file"
