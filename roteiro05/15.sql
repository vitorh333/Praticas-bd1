SELECT e.fname, e.lname
FROM employee e
WHERE NOT EXISTS(
	SELECT p1.pnumber
	FROM employee x, project p1, works_on w1
	WHERE x.ssn = '123456789' AND p1.pnumber = w1.pno AND w1.essn = x.ssn
	
	AND NOT EXISTS(
		SELECT p2.pnumber
		FROM project p2, works_on w2
		WHERE e.ssn = w2.essn AND p2.pnumber = w2.pno AND p1.pnumber = p2.pnumber AND NOT e.ssn = x.ssn
	) 
);
