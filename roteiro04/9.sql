SELECT  E.fname AS employee, S.fname AS employee
FROM employee E, employee S 
WHERE E.superssn = S.ssn
