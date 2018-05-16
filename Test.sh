#! /bin/bash
cd /root/workspace/Jenkis_Pipeline/
gcc -o add Add.c
echo `date` >> testResult
./add 1 2 >> testResult
