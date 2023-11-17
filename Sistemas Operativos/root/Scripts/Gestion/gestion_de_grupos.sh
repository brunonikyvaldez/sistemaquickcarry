#!/bin/bash
function crear_grupo(){
	sudo groupadd "$1"
	echo "Se ha creado el grupo $nom con éxito."
	sleep 3
}
function eliminar_grupo(){
	sudo groupdel "$1"
	echo "Se ha eliminado el grupo $nom con éxito."
	sleep 3
}
function modificar_grupo(){
	case $3 in
		1) sudo groupmod -n "$1" "$2"
		echo "Nombre modificado con éxito."
		sleep 3;;
		2) sudo groupmod -g "$1" "$2"
		echo "ID modificado con éxito."
		sleep 3;;
		*) echo "Error.";;
	esac
}
while [ true ]
do
	clear
	echo "0. Volver"
	echo "1. Crear grupo"
	echo "2. Eliminar grupo"
	echo "3. Modificar grupo"
	echo "4. Mostrar grupos"
	read -p "Seleccione una opción (0-4): " op
	case $op in
		0) clear
		exit;;
		1) clear
		read -p "Nombre: " nom
		if grep -q "^$nom:" /etc/group; then
			echo "El grupo "$nom" ya está creado."
			sleep 3
		else
			crear_grupo "$nom"
		fi;;
		2) clear
		read -p "Nombre del grupo: " nom
		if grep -q "^$nom:" /etc/group; then
			eliminar_grupo "$nom"
		else
			echo "El grupo $nom no está creado."
			sleep 3
		fi;;
		3) clear
		echo "0 = Volver"
		echo "1 = Cambiar nombre"
		echo "2 = Cambiar ID"
		read -p "Seleccione una opción (0-2): " op
		case $op in
			1) clear
			read -p "Nombre del grupo: " old_nom
			read -p "Nuevo nombre: " new_name
			modificar_grupo "$new_name" "$old_nom" "$op";;
			2) clear
			read -p "Nombre del grupo: " nom
			read -p "ID: " new_id
			modificar_grupo "$new_id" "$nom" "$op";;
			0) clear;;
			*) echo "Opción no válida. Por favor, seleccione una opción válida (0-2)."
			sleep 3;;
		esac;;
		4) clear
                cat /etc/group
                read -n 1 -s -r -p "Presiona cualquier tecla para continuar...";;
		*) echo "Opción no válida. Por favor, seleccione una opción válida (0-4)."
		sleep 3;;
	esac
done
