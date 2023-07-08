#!/bin/bash
function Cambiar_nombre(){
	groupmod -n $1 $2
}
function Cambiar_ID(){
	groupmod -g $1 $2
}
while [ true ]
do
	read -p "Hola usuario, ¿Qué desea hacer? 0=Salir, 1=Modificar Grupos. " op
	case $op in
		0) exit;;
		1) read -p "¿Que desea modificar? 0=Salir, 1=Modificar Nombre, 2=Modificar ID. " _op
		case $_op in
			0) exit;;
			1) read -p "Digame el nuevo nombre y el viejo: " new_nom old_nom
			Cambiar_nombre $new_nom $old_nom;;
			2) read -p "Digame el nombre y el nuevo ID: " nom new_ID
			Cambiar_ID $new_ID $nom;;
			*) echo "Error, esta opción no está disponible";;
		esac;;
		*) echo "Error, esta opción no está disponible.";;
	esac
done
