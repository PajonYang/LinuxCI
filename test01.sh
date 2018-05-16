#! /bin/bash
gcc -o add Add.c
c= ./add 1 2
if c=3
then
        echo -e "\nVerify add 1+2=3, pass"
else
        echo -e "\ntest fail"
fi
