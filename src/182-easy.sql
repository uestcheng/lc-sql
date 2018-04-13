SELECT R.Email as Email
FROM
(SELECT Email, count(Email) as cnt
FROM Person
GROUP BY Email) as R
WHERE R.cnt > 1