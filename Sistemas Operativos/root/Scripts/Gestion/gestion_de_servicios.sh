#!/bin/bash

iniciar_servicio() {
	read -p "Ingrese el nombre del servicio para iniciar: " name_service
	sudo systemctl start $name_service
	sleep 3
}

detener_servicio() {
	read -p "Ingrese el nombre del servicio para detener: " name_service
	sudo systemctl stop $name_service
	sleep 3
}

reiniciar_servicio() {
	read -p "Ingrese el nombre del servicio para reiniciar: " name_service
	sudo systemctl restart $name_service
	sleep 3
}

status_servicio() {
	read -p "Ingrese el nombre del servicio para verificar el estado: " name_service
	systemctl status $name_service
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

habiitar_servicio() {
	read -p "Ingrese el nombre del servicio para habilitar: " name_service
	sudo systemctl enable $name_service
	echo "Servicio habilitado para iniciar en el arranque."
	sleep 3
}

deshabilitar_servicio() {
	read -p "Ingrese el nombre del servicio para deshabilitar: " name_service
	sudo systemctl disable $name_service
	echo "Servicio deshabilitado para iniciar en el arranque."
	sleep 3
}

lista_de_servicios_hab() {
	echo "Servicios habilitados: "
	systemctl list-unit-files --type=service | grep enabled
	read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
}

lista_de_servicios_des() {
	echo "Servicios deshabilitados: "
	systemctl list-unit-files --type=service | grep disabled
	read -n 1 -s -r -p "Presione cualquier tecla para continuar..."
}

while [ true ]
do

	clear
	echo "0. Salir"
	echo "1. Listar servicios habilidatos"
	echo "2. Listar servicios deshabilitados"
	echo "3. Iniciar servicio"
	echo "4. Detener servicio"
	echo "5. Reiniciar servicio"
	echo "6. Verificar estado de servicio"
	echo "7. Habilitar servicio para inicio en el arranque"
	echo "8. Deshabilitar servicio para inicio en el arranque"

	read -p "Seleccione una opción (0-8): " op

	case $op in
        	1) clear
		lista_de_servicios_hab;;
		2) clear
		lista_de_servicios_des;;
        	3) clear
		iniciar_servicio;;
        	4) clear
		detener_servicio;;
        	5) clear
		reiniciar_servicio;;
        	6) clear
		status_servicio;;
		7) clear
		habilitar_servicio;;
		8) clear
		deshabilitar_servicio;;
        	0) exit;;
        	*) echo "Opción no válida. Por favor, seleccione una opción válida (0-8)."
		sleep 3;;
	esac

done
