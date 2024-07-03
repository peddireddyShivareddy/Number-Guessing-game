#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_game --tuples-only -c"
echo -e "\nEnter your username:"
read username
username_check=$($PSQL "SELECT player_id from player_info where username = $username;")
if [[ -z $username_check ]]
then
insert_username=$($PSQL "insert into player_info(username) value($username)")
echo "username is inserted : $username "
else
echo "username already exists"
fi
min=1
max=1000
random_number=$((( RANDOM % ( max - min + 1 )) + min ))
echo "random number between $min and $max is $random_number"