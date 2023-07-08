#!/bin/bash
while [ true ]
do
	read -p "Hola usuario, ¿Qué desea hacer? 0=Salir, 1=Agregar Grupo. " op
	case $op in
		0) exit;;
		1) read -p "Digame el nombre del grupo: " nom_gp
		read -p "¿Desea asignarle un ID? s/n " _op
		case $_op in
			n) groupadd $nom_gp;;
			s) read -p "Digame el ID: " id_gp
			groupadd -g $id_gp $nom_gp;; 
			*) echo "Error, esta opción no está disponible.";;
		esac;;
		*) echo "Error, opción no disponible.";;
	esac
done
