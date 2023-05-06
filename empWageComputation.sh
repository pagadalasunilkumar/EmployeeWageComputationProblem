echo "Welcome to EmployeeWageComputationProblem where we are calculating the salary of the employee"

isPresent=1;
isFullTime=2;
empRatePerHr=20;
randomcheck=$((RANDOM%3));

if [ $isFullTime -eq $randomcheck ];
then
    empHrs=8;
elif [ $isPartTime -eq $randomcheck ];  # Error: isPartTime variable is not defined
then
    empHrs=4;
else
    empHrs=0;
fi

salary=$(($empHrs * $empRatePerHr));  # Corrected the variable name empRateperHr to empRatePerHr

echo "Employee salary: $salary"

