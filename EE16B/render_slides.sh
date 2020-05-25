#!/bin/bash


if [[ "$1" == "" ]]; then
    echo "Specify mt1/mt2/final/clean"
elseif [[ "$1" == "clean" ]]; 
	latexmk -c
else
	latexmk -pdf "$1"
fi
