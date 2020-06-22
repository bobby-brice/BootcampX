/** 

Get the total number of assignments for each day of bootcamp but only return rows where total assignments is greater than or equal to 10.

Select the day and the total assignments.
Order the results by day.
This query only requires the assignments table

**/

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;