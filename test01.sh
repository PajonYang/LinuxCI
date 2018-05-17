#! /bin/bash
gcc -o add Add.c
c= ./add 1 2
if c=3
then
        echo "Verify add 1+2=3, pass"
else
        echo "test fail"
        echo "exit -1"
fi
