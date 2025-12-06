SELECT d.dname
FROM department d
WHERE NOT EXISTS(
	SELECT p.pnumber
	FROM project p
	WHERE p.dnum = d.dnumber
);
