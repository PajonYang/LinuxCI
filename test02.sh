#! /bin/bash
gcc -o add Add.c
c= ./add 1 2
if $c=4
then
        echo "Verify add 1+2=4, pass"
else
        echo "test fail"
        exit -1
fi
