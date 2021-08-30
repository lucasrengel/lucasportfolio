#!/bin/bash

nomes=("Mordekaiser" "Fiora" "Balacobaco")
x=0
while [ $x -ne 3 ]
do
    echo "Olá, meu nome é ${nomes[$x]}!"
    x=$(($x+1))
done

