#!/bin/bash

read -p "enter first number: " num1
read -p "enter second number: " num2

if [[ $num1 -ge -100 && $num2 -ge -100 && $num1 -le 100 && $num2 -le 100 ]]
then
    echo "sum: $(($num1 + $num2))"
    echo "difference: $(($num1 - $num2))"
    echo "product: $(($num1 * $num2))"
    echo "quotient: $(($num1 / $num2))"
else
    echo "wrong input!"
fi
