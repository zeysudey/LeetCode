# Write your MySQL query statement below
SELECT R.contest_id, ROUND(COUNT(DISTINCT R.user_id) / COUNT(DISTINCT U.user_id) * 100, 2) AS percentage
FROM Users AS U 
JOIN Register AS R
GROUP BY R.contest_id
ORDER BY 2 DESC, 1 ASC