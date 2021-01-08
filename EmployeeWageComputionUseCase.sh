#! /bin/bash -x
#define constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
#DEFINE VARIBLE
empCheck1=$((RANDOM%3))
empHrs=0
if [ $IS_PRESENT_FULL_TIME -eq $empCheck1 ]
then
        empHrs=8

elif [ $IS_PRESENT_PART_TIME -eq $empCheck1 ]
then
        empHrs=4
else
        emoHrs=0
fi
salary=$(( $empHrs * $EMP_RATE_PER_HR  ))
