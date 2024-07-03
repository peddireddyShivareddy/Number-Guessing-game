#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_game --tuples-only -c"
echo -e "\nEnter your username:"
read username
username_check=$($PSQL "SELECT username from player_info where username = $username;")
if [[ $username == $username_check ]]
then
echo "username already exists"
else
insert_username=$($PSQL "isnert into player_info(username) value($username)")
min=1
max=1000
random_number=$((( RANDOM % ( max - min + 1 )) + min ))
echo "random number between $min and $max is $random_number"