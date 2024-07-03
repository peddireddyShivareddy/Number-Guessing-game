#!/bin/bash
min=1
max=1000
random_number=$((( Random % ( max - min + 1 )) + min ))
echo "random number between $min and $max is $random_number"