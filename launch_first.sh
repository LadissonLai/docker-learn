#!/bin/bash

# Get the input parameter
input=$1

# Check the input parameter and compile the corresponding CPP file
if [ "$input" == "add" ]; then
    /home/add $2 $3
elif [ "$input" == "mul" ]; then
    /home/mul $2 $3
else
    echo "Invalid input parameter"
fi
