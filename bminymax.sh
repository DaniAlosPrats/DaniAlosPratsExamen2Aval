#!/bin/bash


cosumo_minimo=""
cosumo_maximo=""
mayor=0
minimo=999999999

while IFS= read  -r line; do
cosumo=$(echo $line | awk '{print $4}')
   if [[ $consumo =~ ^[0-9]+$ ]]; then
        if [ "$consumo" -gt "$consumo_maximo" ]; then
            consumo_maximo=$consumo_maximo
            cosumo_maximo="$line"
        fi
    fi
done < "consumo.txt"

while IFS= read -r linea; do
    consumo=$(echo "$linea" | awk '{print $4}')
    if [[ $consumo =~ ^[0-9]+$ ]]; then
        if [ "$consumo" -lt "$cosumo_minimo" ]; then
            minimo=$minimo
            cosumo_minimo="$linea"
        fi
    fi
done < "consumo.txt"


echo "El consumo minimo:"
echo "$consumo_minimo"

echo "El consumo maximo:"
echo "$cosumo_maximo"
