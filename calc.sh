#!/bin/bash
echo $1 $2
echo "1=+, 2=-, 3=*, 4=%"
read action
if [ $action -eq 1 ]
then
answer=$(( $1 + $2 ))
elif [ $action -eq 2 ]
then
answer=$(( $1 - $2 ))
elif [ $action -eq 3 ]
then
answer=$(( $1 * $2 ))
elif [ $action -eq 4 ]
then
answer=$(( $1 / $2 ))
else
echo "Invalid action"
fi
if [ $1 -eq 0 ] && [ $action -eq 4 ]
then
echo "Err: Division by zero"
else
echo "Answer is: $answer"
fi
