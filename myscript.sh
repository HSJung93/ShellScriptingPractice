#! /bin/bash

# ECHO COMMAND
# echo Hello Bash!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
NAME="Elliot"
# echo "My name is $NAME"
# echo "My name is {$NAME}"

# USER INPUT
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"

#SIMPLE IF STATEMENT
# if [ "$NAME" == "Hoesung" ]
# then
#  echo "Your name is Hoesung"
# fi

#IF-ELSE
# if [ "$NAME" == "Hoesung" ]
# then
#   echo "Your name is Hoesung"
# else
#   echo "Your name is NOT Hoesung"
# fi

# ELSE-IF (elif)
if [ "$NAME" == "Hoesung" ]
then
  echo "Your name is Hoesung"
elif [ "$NAME" == "Elliot"]
  echo "Your name is Elliot"
else
  echo "Your name is NOT Hoesung or Elliot"
fi