#!/bin/bash
max=""
min=""
cosumo_minimo=999999999
cosumo_maximo=0

while IFS= read  -r line; do
    consumo=$(echo $line | awk '{print $4}')
    if [[ $consumo =~ ^[0-9]+$ ]]; then
        if [ "$consumo" -gt "$cosumo_maximo" ]; then
            consumo_maximo=$consumo
            max="$line"
        fi
        if [ "$consumo" -lt "$cosumo_minimo" ]; then
            cosumo_minimo=$consumo
            min="$line"
        fi
    fi
done < consumo.txt

echo "Maximo : $max"
echo "Minimo : $min"