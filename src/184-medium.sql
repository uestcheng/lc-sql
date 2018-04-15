SELECT D.Name as Department, R.Name as Employee, R.Salary as Salary
FROM Department D
JOIN
(SELECT E1.Name as Name, MS.Salary as Salary, MS.DepartmentId as DepartmentId
FROM Employee E1
JOIN
(SELECT DepartmentId, max(Salary) as Salary
FROM Employee
GROUP BY DepartmentId) as MS
ON E1.Salary = MS.Salary
WHERE E1.DepartmentId = MS.DepartmentId) as R
ON D.Id = R.DepartmentId
