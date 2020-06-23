/** Most Confusing Assignments
We need to know which assignments are causing the most assistance requests.

List each assignment with the total number of assistance requests with it.

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
Expected Result:

 id  |       name       | day | chapter |total_requests 
-----+------------------+-----+---------+------------------
 424 | Ullam cumque     |  51 |      12 |           143
 423 | Culpa esse sint  |  51 |      11 |           113
  45 | Quia quasi       |   5 |       7 |            86
  50 | A rerum          |   6 |       5 |            83
 141 | Illo error dolor |  17 |       9 |            82
 ...
424 rows
**/

SELECT
  assistance_requests.assignment_id as id,
  assignments.name as name,
  assignments.day as day,
  assignments.chapter as chapter,
  count(assistance_requests.*) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assistance_requests.assignment_id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;