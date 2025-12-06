SELECT e.fname, e.salary
FROM employee e

WHERE e.salary > ALL (SELECT d.salary
	FROM employee d, works_on w
	WHERE w.essn = d.ssn AND w.pno = 92)
