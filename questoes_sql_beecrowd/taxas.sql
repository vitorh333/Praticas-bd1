SELECT p.name, ROUND(p.salary * 0.1, 2) AS tax
FROM people p
WHERE p.salary > 3000
