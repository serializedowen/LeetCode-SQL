# Write your MySQL query statement below
Select class
From courses
Group by class
Having count(distinct student) >= 5