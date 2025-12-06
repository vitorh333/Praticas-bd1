SELECT e.fname, e.lname, d.dependent_name
FROM employee e, dependent d
WHERE d.essn = e.ssn;
