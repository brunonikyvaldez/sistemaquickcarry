#!/bin/bash

# Ruta del directorio de respaldo
directorio_respaldo="/root/Respaldos"
archivo_respaldo="$directorio_respaldo/respaldo_usuarios.tgz"

# Obtener la lista de usuarios y guardarla en un archivo temporal
tempfile=$(mktemp)
awk -F: '{ if ($3 >= 1000) print $1 }' /etc/passwd > "$tempfile"

# Crear el archivo tar.gz
tar czf "$archivo_respaldo" -C "$directorio_respaldo" --transform="s|${directorio_respaldo}|respaldo_usuarios|g" "$tempfile"

# Eliminar el archivo temporal
rm "$tempfile"

if [ $? -eq 0 ]; then
        echo "$(date) -----   Respaldo Usuarios - OK" >> /root/Respaldos/confirmaciones.txt
else
        echo "$(date) -----   Respaldo Usuarios - ERROR" >> /root/Respaldos/confirmaciones.txt
fi
