#!/bin/bash

if [ $# -eq 2 ]
then
	P=$(bc <<< "scale=2;$1^$2")
	echo "$1 elevado a $2 é igual a $P."
else
	echo "Sem parâmetros suficientes."
fi
