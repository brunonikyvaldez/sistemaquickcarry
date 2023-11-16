#!/bin/bash

function ver_respaldos(){
    clear
    echo "Respaldos disponibles:"
    respaldos=("/root/Respaldos"/*)
    if [ ${#respaldos[@]} -eq 0 ]; then
        echo "No hay respaldos disponibles."
        return
    fi

    for ((i=0; i<${#respaldos[@]}; i++)); do
        echo "$((i+1)). ${respaldos[i]##*/}"
    done

    read -p "Seleccione un respaldo para ver detalles (0 para salir): " seleccion

    if [ "$seleccion" -eq 0 ]; then
        return
    elif [ "$seleccion" -ge 1 ] && [ "$seleccion" -le "${#respaldos[@]}" ]; then
        clear
        echo "Detalles del respaldo ${respaldos[seleccion-1]##*/}:"
        tar -ztvf "${respaldos[seleccion-1]}"
        read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
    else
        echo "Selección no válida."
        read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
    fi
}
function crear_respaldo(){
	read -p "Ingrese la ruta del directorio a respaldar: " directorio_origen
	if [ ! -d "$directorio_origen" ]; then
        	echo "Error: El directorio de origen no existe."
        	return
    	fi
	read -p "Nombre del respaldo: " nombre_respaldo
	carpeta_destino="$nombre_respaldo"
	tar -czf "/root/Respaldos/$nombre_respaldo.tgz" -C "$directorio_origen" --transform="s,^,$carpeta_destino/," .
	echo "Respaldo completado con éxito en /root/Respaldos/$nombre_respaldo"
	sleep 3
}
function eliminar_respaldo(){
	read -p "Ingrese el nombre del respaldo a eliminar: " respaldo_a_eliminar
	if [ -f "/root/Respaldos/$respaldo_a_eliminar" ]; then
        	rm -r "/root/Respaldos/$respaldo_a_eliminar"
        	echo "Respaldo eliminado: $respaldo_a_eliminar"
    	else
        	echo "Error: El respaldo no existe."
    	fi
}
function descomprimir(){
	read -p "Ingrese el nombre del respaldo a descomprimir: " respaldo_a_descomprimir
	if [ -f "/root/Respaldos/$respaldo_a_descomprimir" ]; then
		tar -xzf "/root/Respaldos/$respaldo_a_descomprimir"
        	echo "Respaldo descomprimido en /ruta/del/directorio/destinoi"
    	else
        	echo "Error: El respaldo no existe."
    	fi
}

while [ true ]
do
	clear
	echo "0. Salir"
	echo "1. Respaldar"
	echo "2. Descomprimir respaldo"
	echo "3. Eliminar respaldo"
	echo "4. Listar respaldos"
	read -p "Seleccione una opción (0-4): " op
	case $op in
		0) exit;;
		1) crear_respaldo;;
		2) descomprimir;;
		3) eliminar_respaldo;;
		4) ver_respaldos;;
		*) echo "Opción no válida. Por favor, seleccione una opción válida (0-4).";;
	esac
done
