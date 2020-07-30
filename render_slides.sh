#!/bin/bash
cd $(dirname "$0")


if [[ "$1" == "" ]]; then
    echo "Specify a class CS61A/CS61B/.../EE16B"

    exit 1
fi

cd $1

if [[ $? -ne 0 ]]; then
     echo "Unknown class. Please specify a class with the name of the folder."
     exit 2
fi

if [[ "$2" == "" ]]; then
    echo "Specify mt1/mt2/final/clean"

    exit 3
elif [[ "$2" == "clean" ]]; then
	latexmk -c
    rm -r ./md-topics/
    rm *.nav *.snm

else
    mkdir -p ./md-topics/

    shopt -s nullglob

    for i in ./topics/*.md; do
        pandoc -t beamer "$i" -o "./md-topics/$(basename $i .md).tex"
    done

    latexmk -pdf "$2"
fi
