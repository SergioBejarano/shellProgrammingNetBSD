#!/bin/bash

# Verifica que se hayan pasado los dos argumentos necesarios
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <nombre_archivo_o_directorio> <directorio_busqueda>"
    exit 1
fi

# Asigna los parámetros a variables
nombre="$1"
directorio="$2"

# Verifica si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 1
fi

# Cambia al directorio especificado
cd "$directorio" || exit

# Verifica si el nombre especificado es un archivo, un subdirectorio, o no existe
if [ -f "$nombre" ]; then
    echo "'$nombre' es un archivo."
elif [ -d "$nombre" ]; then
    echo "'$nombre' es un subdirectorio."
else
    echo "'$nombre' no es un archivo ni un subdirectorio en '$directorio'."
fi