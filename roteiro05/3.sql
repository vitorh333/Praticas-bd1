SELECT e.superssn AS ssn_supervisor, COUNT(*) AS qtd_supervisionados
FROM employee e
GROUP BY e.superssn
ORDER BY qtd_supervisionados ASC;
