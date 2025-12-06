SELECT p.pnumber AS num_proj, AVG(e.salary) AS media_salarial
FROM project p, works_on w, employee e
WHERE w.essn = e.ssn AND w.pno = p.pnumber
GROUP BY p.pnumber
