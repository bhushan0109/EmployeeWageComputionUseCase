#! /bin/bash -x
#define constant
IS_PRESENT=1
#DEFINE VARIBLE
empCheck=$((RANDOM%2))
if [ $IS_PRESENT -eq $empCheck ]
then
        echo "employee is present"
else
        echo "employee is absent"
fi
