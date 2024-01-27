#!/bin/bash
input=$1;

if [ "$input" == "add" ]; then
    g++ /home/vspace/add.cpp -o /home/vspace/add && echo "compile add.cpp successfully." && /home/vspace/add $2 $3;
elif [ "$input" == "mul" ]; then
    g++ /home/vspace/mul.cpp -o /home/vspace/mul && echo "compile mul.cpp successfully." && /home/vspace/mul $2 $3;
else
    echo "Invalid input parameter";
fi
