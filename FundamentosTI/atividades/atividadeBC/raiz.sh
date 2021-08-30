#!/bin/bash

if [ $# -eq 1 ]
then
	R=$(bc <<< "scale=2;sqrt($1)")
	echo "A raiz quadrada de $1 é $R."
fi
