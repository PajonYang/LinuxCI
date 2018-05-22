#!/bin/bash
gcc -o add Add.c
c= ./add 1 2

if [ $c -eq 3 ]
then
        echo "test pass"
fi
