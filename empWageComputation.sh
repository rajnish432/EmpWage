#! /bin/bash 

echo "Welcome to Employee wage";

attendence=$((RANDOM%2))
if [ $attendence -eq 1 ]
then
	echo "Employee present"
else
	echo "Employee absent"
fi
