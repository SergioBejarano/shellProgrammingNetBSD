#!/bin/sh
# Limpia la pantalla
clear

# Verifica que se hayan pasado exactamente 2 argumentos (la palabra y el archivo)
if [ $# -ne 2 ]; then
    echo "Uso: $0 palabra archivo"
    exit 1
fi

# Asigna los argumentos a variables
palabra=$1
archivo=$2

# Verifica si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

# Realiza la búsqueda de la palabra en el archivo
echo "Buscando la palabra '$palabra' en el archivo '$archivo':"
if grep "$palabra" "$archivo"; then
    echo "Búsqueda completada."
else
    echo "No se encontró la palabra '$palabra' en el archivo '$archivo'."
fi
