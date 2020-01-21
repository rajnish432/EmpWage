#! /bin/bash -x 

echo "Welcome to Employee wage";
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
PART_TIME_HOUR=4;
WORKING_DAY_PER_MONTH=20;

for (( i=0; i<$WORKING_DAY_PER_MONTH; i++ ))
do
	attendence=$((RANDOM%2))
	if [ $attendence -eq 1 ]
	then
			case $((RANDOM%2)) in
				0)
					dailyWage=$((dailyWage+(WAGE_PER_HOUR*FULL_DAY_HOUR)));;
				1)
					dailyWage=$((dailyWage+(WAGE_PER_HOUR*PART_TIME_HOUR)));;
			esac
	else
				((dailyWage+=0));
	fi
done
	echo "Employee wage: "$dailyWage
