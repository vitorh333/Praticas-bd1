SELECT e.fname AS nome_supervisor, COUNT(*) AS qtd_supervisionados
FROM employee e
RIGHT JOIN employee d ON e.ssn = d.superssn
GROUP BY e.fname

