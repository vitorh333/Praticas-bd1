SELECT e.fname AS nome_supervisor, COUNT(*) AS qtd_supervisionados
FROM employee e
JOIN employee d ON e.ssn = d.superssn
GROUP BY e.fname
ORDER BY qtd_supervisionados ASC
