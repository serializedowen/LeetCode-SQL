CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE m int;
  SET m = N - 1;
  RETURN (
      select 
      S.salary 
      # end 
      from (
      select distinct salary from 
      Employee
      order by salary desc) S
      Limit 1
      offset m
      
  );
END