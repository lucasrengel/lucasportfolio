# Autor: Lucas Rengel
# Descrição: Algoritmo que lê o ano atual e o ano de nascimento de uma pessoa e escreve uma mensagem dizendo se ela poderá ou não votar este ano.
#!/bin/bash
echo "Qual é o ano atual?"
read ano1
echo "Qual ano você nasceu?"
read ano2

ano18=$((ano1-18))
ano16=$((ano2-16))

if [ $ano2 -le $ano18 ]
then
  echo "Você deve votar!"
elif [ $ano2 -le $ano18 ]
then
  echo "Você pode votar!"
else
  echo "Você não pode votar!"
fi
