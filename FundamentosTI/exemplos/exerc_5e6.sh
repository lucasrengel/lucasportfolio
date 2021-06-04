# Autor: Lucas Rengel
# Descrição: Algoritimo que lê um valor N e imprime todos os valores inteiros entre 1 (inclusive) e N (inclusive). Considerando que o N será sempre maior que ZERO. Caso o valor informado (para N) não seja maior que 0, será lido um novo valor para N. 
#!/bin/bash
read n
m=1
if [ $n -lt 1 ]
then
  echo "Digite um valor maior que zero"
fi
while [ $m -lt $n ]
do
  echo "> $m"
  m=$(($m=1))
done
echo "> $n"
