# Write your MySQL query statement below
SELECT a.user_id, ROUND(SUM(CASE WHEN c.action = 'confirmed' then 1 else 0 END)/COUNT(*),2) AS confirmation_rate
FROM Signups a
LEFT JOIN Confirmations c
ON a.user_id = c.user_id
GROUP BY user_id
