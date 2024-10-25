#!/bin/bash
# Verifica que se proporcionen dos argumentos
if [ $# -ne 2 ]; then
    echo "Uso: $0 <directorio> <permisos>"
    echo "Ejemplo: $0 /etc/ -rw-r--r--"
    exit 1
fi

# Asignar argumentos a variables 
ruta=$1
permisos=$2

if [ ! -d "$ruta" ]; then
    echo "El directorio $ruta no existe."
    exit 1
fi

# Recorrer todos los elementos en la ruta especificada
echo "Buscando archivos en '$ruta' con permisos '$permisos':"

for archivo in "$ruta"/*; do
    if [ -e "$archivo" ]; then
        # Obtener los permisos, incluyendo todos los tipos de archivos
        permisos_archivo=$(ls -ld "$archivo" | awk '{print $1}')
        # Comparar los permisos
        if [ "$permisos_archivo" = "$permisos" ]; then
            echo "$archivo"
        fi
    fi
done

echo "Búsqueda completada."
