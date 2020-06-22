/**
Get all cohorts with 18 or more students. -> count the cohort_id in students

Select the cohort name and the total students.
Order by total students from smallest to greatest.
cohort name is linked by Id to students.cohort_id

 cohort_name | student_count 
-------------+---------------
 FEB12       |            18
 APR09       |            19
 JUN04       |            19
 NOV19       |            22
 SEP24       |            22
(5 rows)
**/

SELECT cohorts.name as cohort_name, count(students.*) AS student_count
FROM cohorts;
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_count;

