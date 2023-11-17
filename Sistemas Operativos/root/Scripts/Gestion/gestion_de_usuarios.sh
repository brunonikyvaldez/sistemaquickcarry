#!/bin/bash

function crear_usuario() {
    sudo useradd -g $2 $1
    echo $3 | passwd --stdin $1
    echo "Usuario $1 creado con éxito."
    sleep 3
}

function eliminar_usuario() {
    case $2 in
        s) sudo userdel -r $1
            echo "Usuario $1 junto con sus archivos eliminados con éxito"
            sleep 3 ;;
        n) sudo userdel $1
            echo "Usuario $1 eliminado con éxito."
            sleep 3 ;;
        *) echo "Opción no válida. Por favor, seleccione una opción válida (s/n)."
            sleep 3 ;;
    esac
}

function modificar_usuario() {
    case $2 in
        0) clear ;;
        1|2|3|4|5) 
            case $2 in
                1) sudo usermod -m -d $dir $1 
		echo "Directorio cambiado con éxito."
		sleep 3;;
                2) sudo usermod -g $grupo $1
		echo "Grupo cambiado con éxito."
		sleep 3;;
                3) sudo usermod -l $new_nom $1 
		echo "Nombre cambiado con éxito."
		sleep 3;;
                4) echo "$new_pass" | passwd --stdin $1 
		echo "Constraseña cambiada con éxito."
		sleep 3;;
                5) sudo usermod -aG $nuevo_grupo $1 
		echo "Se agrego a un nuevo grupo exitosamente."
		sleep 3;;
            esac;;
        *) echo "Error, opción no disponible." ;;
    esac
}

while [ true ]
do
	clear
	echo "0. Volver"
	echo "1. Crear usuario"
	echo "2. Eliminar usuario"
	echo "3. Modificar usuario"
	echo "4. Mostrar usuarios"
	read -p "Seleccione una opción (0-4): " op1
    	case $op1 in
        	0) clear
            	exit ;;
        1) clear
            read -p "Nombre: " nom
            read -p "Grupo: " grupo
            read -sp "Contraseña: " pass
            if id "$nom" > /dev/null 2>&1; then
                echo "El usuario $nom ya existe."
                sleep 3
            else
		if grep -q "^$grupo:" /etc/group; then
                	sleep 1
		else
			sudo groupadd "$grupo"
		fi
      		crear_usuario "$nom" "$grupo" "$pass"
            fi ;;
        2) clear
            read -p "Nombre de usuario: " nom
            if id "$nom" > /dev/null 2>&1; then
                echo "¿Desea eliminar todos los archivos del usuario? s/n"
                read -p "Opción: " op2
                eliminar_usuario "$nom" "$op2"
            else
                echo "El usuario $nom no existe."
                sleep 3
            fi ;;
      	3) clear
   		echo "0 = Volver"
   		echo "1 = Cambiar directorio raíz"
   		echo "2 = Cambiar grupo"
   		echo "3 = Cambiar nombre"
   		echo "4 = Cambiar contraseña"
   		echo "5 = Agregar a un nuevo grupo"
   		read -p "Seleccione una opción (0-5): " op3
   		echo ""
   		case $op3 in
       			0) clear ;;
       			1|2|3|4|5) 
           		read -p "Nombre de usuario: " nom
           		case $op3 in
               			1) read -p "Directorio nuevo: " dir ;;
               			2) read -p "Grupo: " grupo 
				if grep -q "^$grupo:" /etc/group; then
					sleep 1
				else
					sudo groupadd "$grupo"
				fi;;
               			3) read -p "Nuevo nombre: " new_nom ;;
               			4) read -sp "Nueva contraseña: " new_pass ;;
               			5) read -p "Nuevo grupo: " nuevo_grupo 
				if grep -q "^$nuevo_grupo:" /etc/group; then
                                        sleep 1
                                else
                                        sudo groupadd "$nuevo_grupo"
                                fi;;
           		esac
           			modificar_usuario "$nom" "$op3";;
       			*) echo "Opción no válida. Por favor, seleccione una opción válida (0-5)."
          		sleep 3;;
   		esac;;
        4) clear
            cat /etc/passwd
            read -n 1 -s -r -p "Presione cualquier tecla para continuar..." ;;
        *) echo "Opción no válida. Por favor, seleccione una opción válida (0-4)."
            sleep 3 ;;
    esac
done
