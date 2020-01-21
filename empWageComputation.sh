#! /bin/bash 

echo "Welcome to Employee wage";
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
PART_TIME_HOUR=4;

attendence=$((RANDOM%2))
if [ $attendence -eq 1 ]
then
	echo "Employee present"
	if [ $((RANDOM%2)) -eq 1 ]
	then
		dailyWage=$((WAGE_PER_HOUR*FULL_DAY_HOUR))
	else
		dailyWage=$((WAGE_PER_HOUR*PART_TIME_HOUR))
	fi
else
	echo "Employee absent"
	dailyWage=0;
fi
	echo "Employee wage: "$dailyWage
