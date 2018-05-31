#!/bin/bash
gcc -o add Add.c
c=`./add 1 2`

if [ "$c" = "3" ];then
        echo "test pass!"
else 
        echo "error!"
fi
