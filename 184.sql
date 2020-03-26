# Write your MySQL query statement below
Select Name as Employee, S.Salary, S.Department
From Employee Join 
(Select Department.Name as Department, Max(Salary) as Salary, Department.Id as Id
From Employee Join Department on Employee.DepartmentId = Department.Id
Group By Department.Name) S
On Employee.Salary = S.Salary and Employee.DepartmentId = S.Id
