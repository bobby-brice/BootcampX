/**
Cohort Average Assistance Duration
We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

Calculate the average total duration of assistance requests for each cohort.

Use the previous query as a sub query to determine the duration per cohort.
Return a single row average_total_duration
Expected Result:

 average_total_duration 
------------------------
 555:22:25.909091
(1 row)


The previous query is a table itself, with columns, we assign that table as our FROM clause to target the total_duration column, and call the average on that column
as x' refers to psql requirement

**/

SELECT avg(total_duration) as average_total_duration 
FROM (
  SELECT
  cohorts.name as name,
  sum(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration
) as x;



