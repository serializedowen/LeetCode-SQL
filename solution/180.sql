# Write your MySQL query statement below
Select Distinct(l1.Num) as ConsecutiveNums
From (Logs l1 join Logs l2 on l1.id = l2.id - 1 ) 
join Logs l3 on l1.id = l3.id + 1
Where l1.num = l2.num and l1.num = l3.num