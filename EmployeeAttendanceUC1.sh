#! /bin/bash

empPresent=1;


randomCheck=$((RANDOM%2))

if [ $empPresent -eq $randomCheck ]
then
    echo "employee is present";
else
    echo "employee is absent";
fi
