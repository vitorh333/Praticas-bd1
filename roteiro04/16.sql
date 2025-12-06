SELECT p.pname, e.fname
FROM project p, employee e, department d
WHERE p.pnumber > 30 AND p.dnum = d.dnumber and e.ssn = d.mgrssn
