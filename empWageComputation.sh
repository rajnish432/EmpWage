#! /bin/bash -x 

echo "Welcome to Employee wage";
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
PART_TIME_HOUR=4;
WORKING_DAY_PER_MONTH=20;
actual_working_day=0;
month_Hrs=0;
WORKING_HOUR_PER_MONTH=100;

while [[ $month_Hrs -le $WORKING_HOUR_PER_MONTH && $actual_working_day -ne $WORKING_DAY_PER_MONTH ]]
do
	attendence=$((RANDOM%2))
	if [ $attendence -eq 1 ]
	then
			((actual_working_day++))
			case $((RANDOM%2)) in
				0)
					((month_Hrs+=8))
					dailyWage=$((dailyWage+(WAGE_PER_HOUR*FULL_DAY_HOUR)));;
				1)
					((month_Hrs+=4))
					dailyWage=$((dailyWage+(WAGE_PER_HOUR*PART_TIME_HOUR)));;
			esac
	else
			((dailyWage+=0));
	fi
done
	echo "Employee wage: "$dailyWage
