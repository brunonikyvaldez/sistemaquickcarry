#!/bin/bash

# Configuración mysql
user="root"
pass="040201Capo_"
database="ProyectoQC"

# Directorio de respaldo
destino="/root/Respaldos"
fecha=$(date +%Y%m%d)

# Respaldar mysql
mysqldump -u "$user" -p"$pass" "$database" > "mysql_backup_$fecha.sql"

# Comprimir
tar -czf "$destino/mysql_backup_comprimido_$fecha.tgz" "mysql_backup_$fecha.sql"

# Eliminar respaldo sin comprimir
rm "mysql_backup_$fecha.sql"

if [ $? -eq 0 ]; then
        echo "$(date) -----   Respaldo BD - OK" >> /root/Respaldos/confirmaciones.txt
else
        echo "$(date) -----   Respaldo BD - ERROR" >> /root/Respaldos/confirmaciones.txt
fi

