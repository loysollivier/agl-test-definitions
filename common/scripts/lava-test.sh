#!/bin/bash

for i in {1..300}
do
    if [ $((i%2)) -eq 0 ]
    then
        lava-test-case number-$i --result PASS
    else
        lava-test-case number-$i --result FAIL
    fi
done
