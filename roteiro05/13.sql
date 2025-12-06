SELECT e.fname
FROM employee e
WHERE EXISTS(
		SELECT 1
		FROM project p, works_on w
		WHERE e.ssn = w.essn AND p.pnumber = w.pno AND p.plocation = 'Sugarland'
	)

AND EXISTS(
	SELECT 1
	FROM dependent d
	WHERE d.essn = e.ssn
);
