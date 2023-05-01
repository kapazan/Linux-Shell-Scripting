#!/bin/bash

<< task
1. Ask user to enter his/her name.
2. Ask user to enter his/her age.
3. Ask user average life expectancy (ale).
4. Print user name with one of these messages regarding his/her age:
a. age<18 :
“Student”
“At least X years to become a worker.” # (X = 18 - age)
a. 18<=age<65 :
“Worker”
“X years to retire.” # (X = 65 -
age)
a. age>=65 :
if age less than ale:
“Retired”
“X years to die.” # (X = ale - age)
else:
“!!! Already died !!!”
# wait 1 sec.
“!!! Already died !!!”
# wait 2 secs.
“!!! Already died !!!”
task

read -p "enter your name " name
read -p "enter your age " age
read -p "how long do you think you will live " life_expectation

if [[ age -lt 18 ]]
then
    echo "student"
    a=$((18-$age))
    echo "at least $a years to become a worker"
elif [[ age -ge 18 ]] && [[ age -lt 65 ]]
then
    b=$((67-$age))
    echo -e "worker \n$b years to retire"
elif [[ age -ge 65 ]]
then
    if [[ age -lt $life_expectation ]]
    then
        c=$(($life_expectation-$age))
        echo "retired"
        echo "$c years to die"
    else
        echo "already died!!!"
        sleep 1
        echo "already died!!!"
        sleep 2
        echo "already died!!!"
    fi


fi



