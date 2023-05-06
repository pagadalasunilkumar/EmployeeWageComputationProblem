echo "welcome EmployeeWageComputationProblem where we are calculating the salary of the employee"
isPresent=1;
randomcheck=$((RANDOM%2));
if [ $isPresent -eq $randomcheck ];
then
empRateperHr=20;
empHrs=8;
salary=$(($empHrs*$empRateperHr));
else
echo "salary=0"
fi
