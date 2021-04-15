#! /bin/bash -x



IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=20
MAX_WORKING_HOURS=50

totalworkingHrs=0
totalworkingDays=0
while [ $totalworkingDays -lt $NO_OF_WORKING_DAYS ] && 
      [ $totalworkingHrs -lt $MAX_WORKING_HOURS ]
do
   totalworkingDays=$(( $totalworkingDays + 1 ))
    
     empCheck=$(( RANDOM%3 ))
    

     case $empCheck in
          $IS_PRESENT_FULL_TIME)
                  empHRS=8;;
          $IS_PRESENT_PART_TIME)
                  empHrs=4;;
        *)
                  empHrs=0;;
esac
         totalWorkingHrs=$(( $totalworkingHrs + $empHrs ))
done

salary=$(( $EMP_RATE_PER_HR * $totalworkingHrs ))
