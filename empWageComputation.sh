#! /bin/bash 

echo "Welcome to Employee wage";
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
attendence=$((RANDOM%2))
if [ $attendence -eq 1 ]
then
	dailyWage=$((WAGE_PER_HOUR*FULL_DAY_HOUR))
	echo "Employee wage: "$dailyWage
	echo "Employee present"
else
	echo "Employee absent"
	dailyWage=0;
	echo "Employee wage: "$dailyWage
fi
