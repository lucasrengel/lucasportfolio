#!/bin/bash

if [ $# -eq 2 ]
then			
	m=$(bc <<< "scale=2;($1+$2)/2")
	echo "A média dos valores inseridos é $m"
else
	echo "Quantidade inválida de parametros"
fi
