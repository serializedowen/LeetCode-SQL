# Write your MySQL query statement below
Select Employee.Name as Employee
From Employee Inner Join Employee as Manager 
On Employee.ManagerId = Manager.Id
Where Manager.Salary < Employee.Salary