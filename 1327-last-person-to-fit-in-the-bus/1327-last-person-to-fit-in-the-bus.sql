# Write your MySQL query statement below
SELECT 
    j1.person_name
FROM Queue j1 JOIN Queue j2 ON j1.turn >= j2.turn
GROUP BY j1.turn
HAVING SUM(j2.weight) <= 1000
ORDER BY SUM(j2.weight) DESC
LIMIT 1