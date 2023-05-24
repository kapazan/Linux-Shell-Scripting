#!/bin/bash

read -p "enter a letter from set 'y, Y, n, N' " a

if [[ $a == y || $a == Y ]];then
    echo "YES"
elif [[ $a == n || $a == N ]];then
    echo "NO"
else
    echo "wrong input!"
fi



