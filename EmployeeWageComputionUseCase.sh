#! /bin/bash -x
#define constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
WORKING_DAYS=20
MAX_HRS_IN_MONTH=90
MAX_HRS=90
#DEFINE VARIABLE
totalWorkingDays=0
totalEmpHrs=0
while [ $totalWorkingDays -le $WORKING_DAYS ] && [ $totalEmpHrs -lt $MAX_HRS ]
do
        #define variable
        empCheck=$((RANDOM%3))
        empHrs=0

        (( totalWorkingDays++ ))
case $empCheck in
        $IS_PRESENT_FULL_TIME)empHrs=8
        ;;
        $IS_PRESENT_PART_TIME)empHrs=4
        ;;
        *)empHrs=0
        ;;
esac
        totalEmpHrs=$(( $totalEmpHrs +$empHrs ))
done
salary=$(( $totalEmpHrs * $EMP_RATE_PER_HR ))
