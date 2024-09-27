# Write your MySQL query statement below
/*
The sum of any two sides is greater than the third side.

x+y>z  and--  x+z>y   and-----   y+z>x
*/
/*SELECT x, y, z
      
FROM Triangle
where x+y > z or y+z > x or x+z>y*/
SELECT x, y, z,
       CASE
           WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM Triangle
