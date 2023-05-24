#!/bin/bash

num=0
until [[ $num -eq 100 ]]
do
    ((num++))

    kalan=$(($num % 2))

    if [[ $kalan -eq 0 ]]
    then
        continue
    fi
    echo $num
done

