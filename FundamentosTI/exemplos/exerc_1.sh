# Autor: Lucas Rengel
# Descrição: Algoritmo que lê um valor e escreve se é positivo ou negativo (considerando o valor zero como positivo).
#!/bin/bash
echo "Digite um numero"
read num
if [ $num -lt 0 ]
then
  echo "$num e negativo"
else 
  echo "$num e positivo"
fi
