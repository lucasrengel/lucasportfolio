# Autor: Lucas Rengel
# Descrição: Algoritmo que imprime os números de 1 (inclusive) a 10 (inclusive) em ordem decrescente.
#!/bin/bash
i=1
while [ $i -lt 11 ]
do
  echo "- $1"
  i=$((i+1))
done
