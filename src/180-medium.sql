# Write your MySQL query statement below
SELECT DISTINCT L1.Num as ConsecutiveNums
FROM Logs L1, Logs L2, Logs L3
WHERE L3.Id - L2.Id = 1
AND L2.Id - L1.Id = 1
AND L3.Num = L2.Num
AND L2.Num = L1.Num