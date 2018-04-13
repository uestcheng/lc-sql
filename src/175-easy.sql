SELECT P.FirstName, P.LastName, A.City, A.State
FROM Person AS P
LEFT JOIN Address As A
ON P.PersonId = A.PersonId
