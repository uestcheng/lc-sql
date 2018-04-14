# Write your MySQL query statement below
SELECT *
FROM cinema
WHERE description <> 'boring'
HAVING mod(id, 2) = 1
ORDER BY rating
DESC