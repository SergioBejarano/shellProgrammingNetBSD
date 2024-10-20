#!/bin/bash

# Bucle infinito para mostrar el menú
while true; do
    echo "-------------------------------"
    echo "           Menú Shell"
    echo "-------------------------------"
    echo "1. Ejecutar mensaje.sh"
    echo "2. Ejecutar num_lineas.sh"
    echo "3. Ejecutar buscar_palabra.sh"
    echo "4. Ejecutar usuarios.sh"
    echo "5. Ejecutar permisos.sh"
    echo "6. Terminar"
    echo "-------------------------------"
    
    # Leer la opción del usuario
    read -r -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            # Ejecuta mensaje.sh
            ./mensaje.sh
            ;;
        2)
            # Ejecuta num_lineas.sh utilizando 'sh'
            echo "Ejecutando script: num_lineas.sh"
            sh num_lineas.sh
            ;;
        3)
            # Solicita la palabra y el archivo, luego ejecuta buscar_palabra.sh con los argumentos
            echo "Ejecutando script: buscar_palabra.sh"
            echo -n "Ingrese la palabra a buscar: "
            read -r palabra  # Usamos -r para evitar problemas con caracteres especiales
            echo -n "Ingrese el archivo donde buscar: "
            read -r archivo
            ./buscar_palabra.sh "$palabra" "$archivo"
            ;;
        4)
            # Ejecuta usuarios.sh
            ./usuarios.sh
            ;;
        5)
            # Opción permisos.sh: solicita directorio y permisos como argumentos
            echo "Ejecutando script: permisos.sh"
            echo -n "Ingrese el directorio a verificar: "
            read -r directorio
            echo -n "Ingrese los permisos a buscar (por ejemplo, -rw-r--r--): "
            read -r permisos
            ./permisos.sh "$directorio" "$permisos"
            ;;
        6)

            # Sale del script
            echo "Saliendo del menú..."
            exit 0
            ;;
        *)
            # Si elige una opción inválida
            echo "Opción inválida. Intente nuevamente."
            ;;
    esac

    # Pausa antes de mostrar el menú de nuevo
    read -r -p "Presione Enter para continuar..." var_none
done
