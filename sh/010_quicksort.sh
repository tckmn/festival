#!/bin/bash

declare -a sorted
quicksort() {
    # base case
    if [ $# -le 1 ]
    then
        sorted=($@)
        return
    fi

    # partition
    declare -a ret low high
    local pivot=$1
    shift
    for n
    do
        if [ $n -lt $pivot ]
        then
            low+=($n)
        else
            high+=($n)
        fi
    done

    # recurse
    quicksort ${low[@]}
    ret+=(${sorted[@]})
    ret+=($pivot)
    quicksort ${high[@]}
    ret+=(${sorted[@]})

    # return
    sorted=(${ret[@]})
}

mapfile -t nums
quicksort ${nums[@]}
printf '%s\n' ${sorted[@]}
