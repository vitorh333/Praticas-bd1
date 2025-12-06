SELECT p.pname, e.fname
FROM project p, employee e, works_on w
WHERE w.pno = p.pnumber and w.essn = e.ssn
