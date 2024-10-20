#!/bin/sh
# Limpia la pantalla
clear

# Inicializa el contador en 0
cont=0

# Lee el archivo línea por línea
while read -r linea; do
    cont=$((cont + 1))  # Incrementa el contador
done < /etc/profile  # Redirige el archivo como entrada

# Imprime el número de líneas
echo "El número de líneas del archivo /etc/profile es: $cont"
