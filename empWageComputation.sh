#! /bin/bash 

echo "Welcome to Employee wage";
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
PART_TIME_HOUR=4;

attendence=$((RANDOM%2))
if [ $attendence -eq 1 ]
then
	echo "Employee present"
	case $((RANDOM%2)) in
		0)
		dailyWage=$((WAGE_PER_HOUR*FULL_DAY_HOUR));;
		1)
		dailyWage=$((WAGE_PER_HOUR*PART_TIME_HOUR));;
	esac
else
	echo "Employee absent"
	dailyWage=0;
fi
	echo "Employee wage: "$dailyWage
