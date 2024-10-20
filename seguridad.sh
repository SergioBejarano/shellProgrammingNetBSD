#!/bin/bash

# Buscar en el archivo de registro de autenticación cualquier línea que contenga "failure" (sin distinción entre mayúsculas y minúsculas)
grep -i "failure" /var/log/authlog | cut -d: -f 1,2,3

# Contar el número total de líneas que contienen "failure" en el archivo de registro
total=$(grep -i "failure" /var/log/authlog | wc -l)

# Imprimir el número total de intentos fallidos
echo "El número de intentos fallidos es: $total"
