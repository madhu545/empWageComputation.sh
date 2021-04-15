#!/bin/bash

EmpPresent=1;

empcheck=$((RANDOM%2));

if [ $EmpPresent -eq $empcheck ];
then

        EmpRatePerHr=20;
        EmpWrkHrs=8;
        Salary=$(($EmpRatePerHr*$EmpWrkHrs));

else
        Salary=0;
fi
