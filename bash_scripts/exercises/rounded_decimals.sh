#!/bin/bash

<< eof
A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.
read -p "enter mathmatical expression "
eof

read -p "enter a math expression " exp

echo -e "$exp" | bc -l | xargs printf "%.3f \n"




