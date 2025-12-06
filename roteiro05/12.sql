SELECT num_proj, qtd_func
FROM(
	SELECT p.pnumber AS num_proj, COUNT(e.ssn) AS qtd_func
	FROM project p
	LEFT JOIN works_on w ON w.pno = p.pnumber
	LEFT JOIN employee e ON e.ssn = w.essn

	GROUP BY p.pnumber
)
WHERE qtd_func < 5
ORDER BY qtd_func ASC
