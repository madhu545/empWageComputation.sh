#! /bin/bash -x



IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=20

for ((day=1 ; day<=$NO_OF_WORKING_DAYS ; day++))
do

empCheck=$(( RANDOM%3 )) 



case $empCheck in
          $IS_PRESENT_FULL_TIME)
                  empHRS=8;;
          $IS_PRESENT_PART_TIME)
                  empHrs=4;;
         *)
          empHrs=0;;
esac

total workingHrs=$(( $totalworkingHrs + $empHrs ))
done
salary=$(( $EMP_RATE_PER_HR * $empHrs )) 
