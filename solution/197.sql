# Write your MySQL query statement below
Select w1.Id as Id
From Weather w1 Join 
Weather w2
On DateDiff(w1.RecordDate, w2.RecordDate) = 1
Where w1.Temperature > w2.Temperature
