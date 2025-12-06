SELECT pnumber AS num_projeto, MIN(func) AS qtd

FROM (
	SELECT p.pnumber, COUNT(e.ssn) AS func
	FROM employee e, project p, works_on w
	WHERE e.ssn = w.essn AND p.pnumber = w.pno
	GROUP BY p.pnumber
) AS sub
