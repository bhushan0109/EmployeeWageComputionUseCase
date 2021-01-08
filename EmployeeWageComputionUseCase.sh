#! /bin/bash -x
#define constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
WORKING_DAYS=20
#DEFINE VARIBLE
totalSalary=0
for ((i=0;i<$WORKING_DAYS;i++))
do
#DEFINE VARIBLE
empCheck=$((RANDOM%3))
case $empCheck in
        $IS_PRESENT_FULL_TIME)empHrs=8
        ;;
        $IS_PRESENT_PART_TIME)empHrs=4
        ;;
        *)empHrs=0
        ;;
esac
salary=$(( $empHrs * $EMP_RATE_PER_HR  ))
totalSalary=$(($totalSalary + $salary))
done
