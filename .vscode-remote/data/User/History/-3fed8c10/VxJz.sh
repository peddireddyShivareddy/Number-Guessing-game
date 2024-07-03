#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_game --tuples-only -c"

min=1
max=1000
random_number=$((( RANDOM % ( max - min + 1 )) + min ))
echo "random number between $min and $max is $random_number"