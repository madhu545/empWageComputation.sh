#! /bin/bash -x

declare -A dailyWages



IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=20
MAX_WORKING_HOURS=80

totalWorkingHrs=0
totalWorkingDays=0


function getWorkHours() {
        local empCheck=$1
        local empHrs=0
        case $empCheck in 
          $IS_PRESENT_FULL_TIME)
               empHrs=8;;
          $IS_PRESENT_PART_TIME)
               empHrs=4;;
           *)
                empHrs=0;;
      esac
      echo $empHrs

}
 
function getWageForDay() {
           local empHrs=$1
           local wages=$(( $EMP_RATE_PER_HR * $empHrs ))
           echo $wages
}

while [ $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && 
      [ $totalWorkingHrs -lt $MAX_WORKING_HOURS ]
do
   totalworkingDays=$(( $totalworkingDays + 1 ))
    
     empCheck=$(( RANDOM%3 )) 
    
          empHrs="$( getWorkHours $empCheck )"
          dailyWages[Day_$totalWorkingDays]="$( getWageForDay $empHrs )"
          totalWorkingHrs=$(( $totalWorkingHrs + $empHrs ))
done

salary=$(( $EMP_RATE_PER_HR * $totalWorkingHrs ))
echo ${!dailyWages[*]}
echo ${dailyWages[*]}

for key in ${!dailyWages[*]}
do
   echo "$key:${dailyWages[$key]}"
done
