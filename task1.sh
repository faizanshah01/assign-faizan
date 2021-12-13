#!/bin/bash

# This script will print the random number from 1 to 10.

# The minumum & maximum value of the arguments are assigned below.
min=1
max=10

# Validate if the hardcoded arguments values are logical.
[[ "$max" -lt "$min" ]] && { echo -e "\033[0;31mERROR\033[0m: Max value should be greater than Min value. Please recheck the hardcoded values again."; exit 1; }

# The Range number should be greater than 1.
range_numnber=$(($max-$min))
[[ $range_number == 1 ]] && { echo "\033[0;31mERROR\033[0m: The differnce between the max and min value should be greater than one. Please recheck the hardocded values again."; exit 1; }

# Calculate the random number.
random_num=$(($min + $RANDOM % $max))

# Print the number which is generated randomly.
echo "The generated random number is: $random_num"
