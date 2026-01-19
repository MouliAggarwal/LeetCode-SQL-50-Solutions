# Write your MySQL query statement below
SELECT b.project_id , ROUND(AVG(a.experience_years), 2) AS average_years
FROM project b
JOIN employee a
ON a.employee_id = b.employee_id
GROUP BY b.project_id
