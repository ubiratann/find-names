#!/bin/bash

while IFS= read -r name || [ -n "$name" ];
do
    # while IFS= read -r line || [ -n "$line" ];
    # do
    test=$(grep -wn "$name" "$search")
    if [ ! -z "$test" ];
    then
        echo $test
    fi
    test=""
    # done < "teste"
done < "$names"


names=$1
search=$2