#!/bin/bash


# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi


# Assign arguments to variables
principal=$1
rate=$2
time=$3


# Calculate Simple Interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)


# Display the result
echo "Principal: $principal"
echo "Rate: $rate"
echo "Time: $time"
echo "Simple Interest: $simple_interest"
