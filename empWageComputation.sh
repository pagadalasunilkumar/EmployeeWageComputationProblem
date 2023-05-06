echo "Welcome to EmployeeWageComputationProblem where we are calculating the salary of the employee"
function getWorkingHours() {
    case $1 in
        1)
            echo 8 ;; 
        2)
            echo 4 ;; 
        *)
            echo 0 ;;  
    esac
}
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=100
totalWorkingDays=0
totalWorkingHrs=0

while [[ $totalWorkingDays -lt $MAX_WORKING_DAYS && $totalWorkingHrs -lt $MAX_WORKING_HRS ]]
do
    ((totalWorkingDays++))
    empCheck=$((RANDOM%3))
    empHrs=$(getWorkingHours $empCheck)
    totalWorkingHrs=$((totalWorkingHrs + empHrs))
    salary=$((empHrs * EMP_RATE_PER_HR))
    totalSalary=$((totalSalary + salary))
done

echo "Total Salary: $totalSalary"
echo "Total Working Hours: $totalWorkingHrs"
echo "Total Working Days: $totalWorkingDays"

