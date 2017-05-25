#!/bin/bash

while read n
do
    seq 1 $n | while read x
    do
        if (( x % 3 == 0 && x % 5 == 0 ))
        then
            echo Fizzbuzz
        elif (( x % 3 == 0 ))
        then
            echo Fizz
        elif (( x % 5 == 0 ))
        then
            echo Buzz
        else
            echo $x
        fi
    done
done
