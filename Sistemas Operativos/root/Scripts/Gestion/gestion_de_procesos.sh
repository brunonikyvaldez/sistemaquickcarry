#!/bin/bash

mostrar_procesos() {   
	clear 
	echo "Información de todos los procesos: "    
	ps -aux
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

mostrar_info_detallada() {    
	clear
	read -p "Ingrese el ID del proceso: " process_id    
	ps -p $process_id -o pid,ppid,user,%cpu,%mem,cmd
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

kill_proceso() {
	clear
	read -p "Ingrese el ID del proceso para terminar: " process_id
	kill -9 $process_id
	echo "Proceso terminado."
	sleep 3
}

buscar_proceso() {
	clear
	read -p "Ingrese el nombre del proceso a buscar: " process_name
	ps aux | grep $process_name
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

mostrar_procesos_usuario() {
	clear
	read -p "Ingrese el nombre de usuario: " username
	ps -u $username
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

while [ true ] 
do
	clear
	echo "0. Volver"
	echo "1. Mostrar información de todos los procesos"
	echo "2. Mostrar información detallada de un proceso por ID"
	echo "3. Terminar un proceso por ID"
	echo "4. Buscar procesos por nombre"
	echo "5. Mostrar procesos de un usuario específico"
	read -p "Seleccione una opción (0-5): " op
	case $op in
		1) mostrar_procesos;;
        	2) mostrar_info_detallada;;
       		3) kill_proceso;;
        	4) buscar_proceso;;
        	5) mostrar_procesos_usuario;;
 		0) exit ;;
		*) echo "Opción no válida. Por favor, seleccione una opción válida (0-5)."
		sleep 3;;
    	esac
done
