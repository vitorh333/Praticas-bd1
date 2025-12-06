SELECT AVG(e.salary)
FROM employee e
WHERE e.address LIKE '%TX' AND e.sex = 'M'
