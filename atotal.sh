#!/bin/bash




echo "Di una ciudad:"
read ciudad

suma=0


check_ciudad() {
  grep -q "$1" consumo.txt
}

while ! check_ciudad "$ciudad"; do
  echo "La ciudad no existe en el archivo. Introduzca otra ciudad:"
  read ciudad
done


suma=0
while read line; do
  city=$(echo $line | awk -F, '{print $1}')
  consumo=$(echo $line | awk -F, '{print $4}')

  if [ "$city" == "$ciudad" ]; then
    suma=$((suma + consumo))
  fi
done < consumo.txt

echo "El consumo total de $ciudad es: $suma"