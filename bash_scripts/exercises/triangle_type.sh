#!/bin/bash

read -p "first side " a
read -p "second side " b
read -p "third side " c

if [[ $a == $b && $a == $c ]]
then
    echo "EQUILATERAL"
elif [[ $a == $b ]] || [[ $b == $c ]] || [[ $a == $c ]]
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

