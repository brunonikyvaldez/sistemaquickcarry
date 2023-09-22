#!/bin/bash
while [ true ]
do
	read -p "Usuario, ¿Qué desea hacer? 0=Salir, 1=Eliminar Grupo. " op
	case $op in
		0) exit;;
		1) read -p "Digame el nombre del grupo: " nom_gp
		groupdel $nom_gp;;
		*) echo "Error, opción no disponible.";;
	esac
done
