#!bin/bash
#Vuelve a la rama parte1. Haz un script que se llame cmedia.sh, que pasándole como parámetro una ciudad, me devuelva la media de sus consumos. Comitea, integra en master y sube a GitHub (1 punto)

echo "Introduce una ciudad"
read ciudad
media= ""
while read -r line ; do
consumo=$(echo "$line" | awk '{print $4}')
done < consumo.txt