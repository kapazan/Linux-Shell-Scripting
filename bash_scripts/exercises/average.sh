#!/bin/bash
<< eof
Given  integers, compute their average, rounded to three decimal places.
eof


read -p "enter the numbers of digits: " n

total=0
for i in $(seq $n)
do
read -p "enter a number: " num
total=$((total + num))
done

printf "%.3f" $(echo "$total / $n" | bc -l)
