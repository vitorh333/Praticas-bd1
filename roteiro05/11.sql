SELECT e.ssn, COUNT(w.pno) AS qtd_proj
FROM employee e
LEFT JOIN works_on w 
    ON w.essn = e.ssn
LEFT JOIN project p
    ON p.pnumber = w.pno
GROUP BY e.ssn
ORDER BY qtd_proj ASC

