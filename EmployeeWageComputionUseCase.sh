#! /bin/bash -x
#define constant
IS_PRESENT=1
EMP_RATE_PER_HR=20
#DEFINE VARIBLE
empCheck=$((RANDOM%2))
empHrs=0
if [ $IS_PRESENT -eq $empCheck ]
then
        empHrs=8
else
        empHrs=0
fi
salary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo $salary
