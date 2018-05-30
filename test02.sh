#! /bin/bash
gcc -o add Add.c
c=`./add 1 2`

if [ "$c" = "4" ];then
        echo "test pass"
else 
        echo "error message: Something failed"
        exit 0
fi
