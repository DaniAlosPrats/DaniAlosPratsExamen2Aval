#!/bin/bash

echo "Di una ciudad:"
read ciudad

suma=0

while read line; do
  nombre_ciudad=$(echo $line | awk -F, '{print $1}')
  consumo=$(echo $line | awk -F, '{print $4}')

  if [ "$ciudad" == "$nombre_ciudad" ]; then
    suma=$((consumo  + suma))
  fi
done < consumo.txt

echo "El consumo total de $ciudad es: $suma"