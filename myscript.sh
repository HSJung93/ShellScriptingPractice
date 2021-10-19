#! /bin/bash

# ECHO COMMAND
echo Hello Bash!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
NAME="Bab"
echo "My name is $NAME"
echo "My name is {$NAME}"

# USER INPUT
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
# if [ "$NAME" == "Hoesung" ]
# then
#  echo "Your name is Hoesung"
# fi

# IF-ELSE

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
elif [ "$NAME" == "Elliot" ]
then
  echo "Your name is Elliot"
else
  echo "Your name is NOT Hoesung or Elliot"
fi

# COMPARISON
# -eq ==
# -ne !=
# -gt >
# -ge >=
# -lt <
# -le <=
NUM1=31
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]  
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS
# -d file   True if the file is a directory
# -e file   True if the file exists(not that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u        True if the user id is set on a file
# -w        True if the file is writable
# -x        True if the file is an executable

FILE="test.txt"
if [ -e "$FILE" ]
then 
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi

# CASE STATEMENT
# read -p "Are you 21 or over? Y/N " ANSWER
ANSWER="Y"
case "$ANSWER" in
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no drinking"
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac

# SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do 
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#   do 
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP -READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-new-1.txt"

#FUNCTION
function sayHello(){
  echo "Hello World"
}

sayHello

# FUNCTION WITH PARAMS
function greet () {
  echo "Hello, I am $1 and I am $2"
}

greet "Brad" "32"

# CREATE FOLDER AND WRITE TO A FILE
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Created hello/world.txt"