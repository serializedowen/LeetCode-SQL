# Write your MySQL query statement below

Select 
Case When min(S.Salary) = max(S.Salary) then null
Else 
min(S.Salary)
End
As SecondHighestSalary 
From
(Select Salary 
From Employee
Order By Salary Desc
Limit 2
) S
Order By S.Salary Asc
Limit 1