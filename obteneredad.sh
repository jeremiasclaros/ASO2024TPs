#!/bin/bash

read -p "Ingrese un nombre: " nombre

respuesta=$(curl -s "https://api.agify.io/?name=$nombre")

edad=$(echo $respuesta | jq -r '.age')

if [ "$edad" != "null" ]; then
    echo "La edad probable para el nombre $nombre es: $edad años"
else
    echo "No se pudo determinar la edad probable para el nombre $nombre"
fi
